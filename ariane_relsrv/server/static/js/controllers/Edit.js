/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('EditCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.selectedObj = {};
        var backupObj = {obj: "default", node:{}};
        $scope.enableEdit = false; // User can start to edit (only SNAPSHOT versions are editable)
        $scope.activeEdit = false; // User is editing (after changing input property or after click on Add/Delete)
        $scope.isDeleting = false;
        $scope.isNewNode = false;
        $scope.choice = {isNewSubParent: "no", deleting: "no"};
        $scope.parent = {};
        $scope.page = 'edition';
        var editables = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos'];
        var editablesForNewNode = {
            module: editables,
            plugin: ["name", "version"],
            submodule: ["name", "order"],
            filenode: ["name", "version", "type", "path"],
            distrib: ["name", "version"]
        };

        $scope.$on('handleEdition', function(){
            if(!$scope.activeEdit) {
                var old_enableEdit = $scope.enableEdit;
                backupObj = serviceUI.getSelectedObj();
                if (backupObj != -1){
                    var baseObj = serviceUI.getBaseObj();
                    $scope.selectedObj = JSON.parse(JSON.stringify(backupObj)); // copy JSON object
                    $scope.enableEdit = serviceUI.checkEditable();
                    $scope.isNewNode = false;
                    $scope.isDeleting = false;
                    $scope.parent = {};
                }
                else
                    $scope.enableEdit = false;

                if(old_enableEdit != $scope.enableEdit)
                    setScopeAndNotify('enableEdit', $scope.enableEdit);
            }

            return $scope.enableEdit;
        });

        $scope.$on('addEdit', function(){
            $scope.setActiveEdit();
            var newElement = serviceUI.getAddDelObj();
            $scope.parent = newElement.parent;
            backupObj = {obj: "default", node:{}};
            backupObj.obj = newElement.obj;
            backupObj.node = newElement.node;
            $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
            $scope.isNewNode = true;
        });
        $scope.$on('delEdit', function(){
            $scope.setActiveEdit();
            var newElement = serviceUI.getAddDelObj();
            backupObj = {obj: "default", node:{}};
            backupObj.obj = newElement.obj;
            backupObj.node = newElement.node;
            $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
            $scope.isDeleting = true;
        });

        $scope.setActiveEdit = function(){
            if($scope.enableEdit){
                serviceUI.setState({obj: "selectedObj", status:"editing"});
                setScopeAndNotify('activeEdit', true);
            }
        };
        $scope.isPropEditable = function(prop){
            if($scope.isNewNode)
            {
                return (editablesForNewNode[$scope.selectedObj.obj].indexOf(prop) > -1);
            }
            else
                return (editables.indexOf(prop) > -1);
        };

        $scope.save = function(){
            if($scope.activeEdit){
                if($scope.isNewNode){ // CREATING
                    if($scope.selectedObj.obj == "submodule"){
                            $scope.selectedObj.node.issubparent = ($scope.choice.isNewSubParent=="yes");
                    }
                    serviceAjax.create($scope.selectedObj.node, $scope.selectedObj.obj, $scope.parent).success(function(data){
                        $scope.selectedObj.node = data[$scope.selectedObj.obj];
                        updateJSON(backupObj.node, $scope.selectedObj.node); // also updates serviceUI's addDelObj
                        serviceUI.actionBroadcast('addNode');
                        //TODO print success into UI
                    });
                    $scope.isNewNode = false;
                }
                else if($scope.isDeleting){ // DELETING
                    if($scope.choice.deleting == "yes"){
                        serviceAjax.delete($scope.selectedObj.node).success(function(data){
                            backupObj.node = {};
                            backupObj.obj = "default";
                            $scope.selectedObj = backupObj;
                            serviceUI.actionBroadcast('deleteNode');
                        });
                    }
                    $scope.isDeleting = false;
                }
                else{ // UPDATING
                    var res = serviceAjax.save($scope.selectedObj.node, $scope.selectedObj.obj);
                    if(res){
                        updateJSON(backupObj.node, $scope.selectedObj.node);
                    }
                }
                serviceUI.setState({obj: backupObj.obj, status: "done"});
                setScopeAndNotify('activeEdit', false);
            }
        };

        $scope.cancel = function(){
          if($scope.activeEdit){
              $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
              serviceUI.setState({obj: backupObj.obj, status: "done"});
              setScopeAndNotify('activeEdit', false);
          }
        };
        function updateJSON(obj, model){
            for (var key in model){
                if(typeof obj[key] != "undefined"){
                    obj[key] = model[key];
                }
            }
        }
        function setScopeAndNotify(key_scope, value){
            $scope[key_scope] = value;

            if(key_scope == "enableEdit"){
                serviceUI.setEnableEdit(value);
            }
            else if(key_scope == "activeEdit")
                serviceUI.setActiveEdit(value);
            else { return; }
            serviceUI.actionBroadcast(key_scope);
        }
    });
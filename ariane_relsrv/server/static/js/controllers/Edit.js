/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('EditCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.selectedObj = {};
        var backupObj = {obj: "default", node:{}};
        $scope.enableEdit = false; // User can start to edit
        $scope.activeEdit = false; // User is editing
        $scope.isDeleting = false;
        $scope.isNewNode = false;
        $scope.choice = {isNewSubParent: "no", deleting: "no"};
        $scope.parent = {};
        var editables = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos'];
        var editablesForNewNode = {
            module: editables,
            plugin: ["name", "version"],
            submodule: ["name", "order"],
            filenode: ["name", "version", "type"],
            distrib: ["name", "version"]
        };

        $scope.$on('handleEdition', function(){
            if(!$scope.activeEdit) {
                var old_enableEdit = $scope.enableEdit;
                backupObj = serviceUI.getSelectedObj();
                if (backupObj != -1){
                    var baseObj = serviceUI.getBaseObj();
                    $scope.selectedObj = JSON.parse(JSON.stringify(backupObj)); // copy JSON object
                    $scope.enableEdit = (baseObj.node.version.indexOf("SNAPSHOT") > -1);
                    $scope.isNewNode = false;
                    $scope.isDeleting = false;
                    $scope.parent = {};
                }
                else
                    $scope.enableEdit = false;

                if(old_enableEdit != $scope.enableEdit)
                    serviceUI.setEnableEdit($scope.enableEdit);
                    serviceUI.actionBroadcast('setEnableEdit'); // talks to Composition Column
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
                $scope.activeEdit = true;
                serviceUI.setState({obj: "selectedObj", status:"editing"});
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
                if($scope.isNewNode){
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
                else if($scope.isDeleting){
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
                else{
                    var res = serviceAjax.save($scope.selectedObj.node, $scope.selectedObj.obj);
                    if(res){
                        updateJSON(backupObj.node, $scope.selectedObj.node);
                    }
                }
                $scope.activeEdit = false;
                serviceUI.setState({obj: backupObj.obj, status: "done"});
            }
        };

        $scope.cancel = function(){
          if($scope.activeEdit){
              $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
              $scope.activeEdit = false;
              serviceUI.setState({obj: backupObj.obj, status: "done"});
          }
        };
        function updateJSON(obj, model){
            for (var key in model){
                if(typeof obj[key] != "undefined"){
                    obj[key] = model[key];
                }
            }
        }
    });
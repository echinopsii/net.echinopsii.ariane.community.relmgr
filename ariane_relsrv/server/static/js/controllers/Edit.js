/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('EditCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.selectedObj = {};
        var backupObj = {obj: "default", node:{}};
        $scope.enableEdit = false; // User can start to edit
        $scope.activeEdit = false; // User is editing
        $scope.isNewNode = false;
        $scope.choiceSubParent = {isNewSubParent: "no"};
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

        $scope.$on('addDelEdit', function(){
            $scope.setActiveEdit();
            var newElement = serviceUI.getAddDelObj();
            $scope.parent = newElement.parent;
            backupObj.obj = newElement.obj;
            backupObj.node = newElement.node;
            $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
            $scope.isNewNode = true;
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
                var ret = (editablesForNewNode[$scope.selectedObj.obj].indexOf(prop) > -1);
                return ret;
            }
            else
                return (editables.indexOf(prop) > -1);
        };

        $scope.save = function(){
            if($scope.activeEdit){
                if($scope.isNewNode){
                    if($scope.selectedObj.obj == "submodule"){
                            $scope.selectedObj.node.issubparent = ($scope.choiceSubParent.isNewSubParent=="yes");
                    }
                    serviceAjax.create($scope.selectedObj.node, $scope.selectedObj.obj, $scope.parent).success(function(data){
                        console.log("created");
                    });
                    $scope.isNewNode = false;
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
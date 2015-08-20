/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('EditCtrl', function ($scope, serviceAjax) {
        $scope.selectedObj = {};
        var backupObj = {obj: "default", node:{}};
        $scope.enableEdit = false; // User can start to edit
        $scope.activeEdit = false; // User is editing
        var editables = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos'];

        $scope.isEditEnable = function(){
            if(!$scope.activeEdit) {
                backupObj = serviceAjax.getSelectedObj();
                if (backupObj != -1){
                    var baseObj = serviceAjax.getBaseObj();
                    $scope.selectedObj = JSON.parse(JSON.stringify(backupObj)); // copy JSON object
                    $scope.enableEdit = (baseObj.node.version.indexOf("SNAPSHOT") > -1);
                }
                else
                    $scope.enableEdit = false;
            }
            return $scope.enableEdit;
        };

        $scope.setActiveEdit = function(){
            if($scope.enableEdit){
                $scope.activeEdit = true;
                serviceAjax.setState({obj: "selectedObj", status:"editing"});
            }
        };
        $scope.isPropEditable = function(prop){
            return (editables.indexOf(prop) > -1);
        };
        $scope.save = function(){
            if($scope.activeEdit){
                var res = serviceAjax.save($scope.selectedObj.node, $scope.selectedObj.obj);
                if(res){
                    updateJSON(backupObj.node, $scope.selectedObj.node);
                }
                serviceAjax.setState({obj: backupObj.obj, status: "done"});
            }
        };

        $scope.cancel = function(){
          if($scope.activeEdit){
              $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
              $scope.activeEdit = false;
              serviceAjax.setState({obj: backupObj.obj, status: "done"});
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
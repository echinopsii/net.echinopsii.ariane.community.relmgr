/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColNodesCtrl', function ($scope, serviceAjax) {
        $scope.modules = [];
        $scope.submodules = [];
        $scope.filenodes = [];
        $scope.curNodeSelected = 0;
        $scope.togMod = true;
        $scope.togSub = true;
        $scope.togFile = true;
        $scope.limitLetterNum = 60;
        var tmp_modules = [];
        var tmp_submodules = [];
        var curBaseObj = {};

        /*function isStateChanged(){
            var state = serviceAjax.getState();
            if(state.status == "new"){
                state.status = "none";
                serviceAjax.setState(state);
                return true;
            }
            return false;
        }*/

        function DistSelected(baseObj){
            serviceAjax.module(baseObj["node"]).success(function(data){
                data.modules.sort(sortOrder);
                $scope.modules = data.modules;
                $scope.togMod = true;
                var modlen = $scope.modules.length;

                for(var i=0; i<modlen; i++){
                    var m = $scope.modules[i];
                    m['togModSub'] = false;
                    //m['sublist'] = [{name:'yolo'},{name:'ratata'}];
                    (function(mod){ // Using closure function in order to update m['sublist'] inside of serviceAjax..success()
                        serviceAjax.submodule(mod).success(function(data){
                            data.submodules.sort(sortName);
                            mod['sublist'] = data.submodules;
                        });
                    })(m);
                }
            });
            tmp_submodules = $scope.submodules;
            $scope.submodules = [];
            $scope.togSub = false;
        }
        function PlugSelected(baseObj){
            serviceAjax.submodule(baseObj["node"]).success(function(data){
                data.submodules.sort(sortOrder);
                $scope.submodules = data.submodules;
                $scope.togSub = true;
            });
            tmp_modules = $scope.modules;
            $scope.modules = [];
            $scope.togMod = false;
        }

        $scope.$on('newBaseSelected', function(){
            var flag_curBase = true;
            var baseObj = serviceAjax.getBaseObj();
            if (baseObj["obj"] == "dist" && baseObj != curBaseObj) {
                DistSelected(baseObj);
            }
            else if (baseObj["obj"] == "plug" && baseObj != curBaseObj) {
                PlugSelected(baseObj);
            }
            else {
                flag_curBase = false;
            }
            if (flag_curBase) {
                curBaseObj = baseObj;
                serviceAjax.file(baseObj["node"]).success(function (data) {
                    data.filenodes.sort(sortName);
                    $scope.filenodes = data.filenodes;
                    $scope.togFile = true;
                });
            }
        });
        /*$scope.isElementSelected = function(){
            var flag_error = false; // A utiliser pour gérer les erreurs.
            if(isStateChanged()) {
                var flag_curBase = true;
                var baseObj = serviceAjax.getBaseObj();
                if (baseObj["obj"] == "dist" && baseObj != curBaseObj) {
                    DistSelected(baseObj);
                }
                else if (baseObj["obj"] == "plug" && baseObj != curBaseObj) {
                    PlugSelected(baseObj);
                }
                else {
                    flag_curBase = false;
                }
                if (flag_curBase) {
                    curBaseObj = baseObj;

                    serviceAjax.file(baseObj["node"]).success(function (data) {
                        data.filenodes.sort(sortName);
                        $scope.filenodes = data.filenodes;
                        $scope.togFile = true;
                    });
                }
            }
            return flag_error != true;
        };*/

        $scope.clickMod = function(module){
            var nodeObj = serviceAjax.getNodeObj();
            if((nodeObj["obj"] != "module")
                ||((nodeObj["obj"] == "module") && (nodeObj["node"] != module))) {
                if(serviceAjax.setState({obj: "module", status: "newMod"})) {
                    if (typeof module.style != "undefined")
                        delete module.style;
                    serviceAjax.setNodeObj({obj: 'module', node: module});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["style"] = "none";
                    module.style = "selected";
                    $scope.curNodeSelected = module;
                    serviceAjax.actionBroadcast();
                }
            }
        };
        $scope.clickSub = function(submodule){
            var nodeObj = serviceAjax.getNodeObj();
            if((nodeObj["obj"] != "submodule")
                ||((nodeObj["obj"] == "submodule") && (nodeObj["node"] != submodule))) {
                if(serviceAjax.setState({obj: "submodule", status: "new"})) {
                    if (typeof submodule.style != "undefined")
                        delete submodule.style;
                    serviceAjax.setNodeObj({obj: 'submodule', node: submodule});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["style"] = "none";
                    submodule.style = "selected";
                    $scope.curNodeSelected = submodule;
                    serviceAjax.actionBroadcast();
                }
            }
        };
        $scope.clickFile = function(file){
            var nodeObj = serviceAjax.getNodeObj();
            if((nodeObj["obj"] != "file")
                ||((nodeObj["obj"] == "file") && (nodeObj["node"] != file))){
                if(serviceAjax.setState({obj: "file", status: "new"})) {
                    if (typeof file.style != "undefined")
                        delete file.style;
                    serviceAjax.setNodeObj({obj: 'file', node: file});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["style"] = "none";
                    file.style = "selected";
                    $scope.curNodeSelected = file;
                    serviceAjax.actionBroadcast();
                }
            }
        };
        $scope.toggleModList = function(){
            $scope.togMod = !$scope.togMod;
        };
        $scope.isModToggle = function(){
            return $scope.togMod;
        };
        $scope.toggleModSub = function(mod){
            mod.togModSub = !mod.togModSub;
        };
        $scope.isModSubToggle = function(mod){
            return mod.togModSub;
        };
        $scope.toggleSubList = function(){
            $scope.togSub = !$scope.togSub;
        };
        $scope.isSubToggle = function(){
            return $scope.togSub;
        };
        $scope.toggleFileList = function(){
            $scope.togFile = !$scope.togFile;
        };
        $scope.isFileToggle = function(){
            return $scope.togFile;
        };
        function sortOrder(a,b){
            return a.order - b.order;
        }
        function sortName(a,b){
            return a.name.localeCompare(b.name);
        }
    });
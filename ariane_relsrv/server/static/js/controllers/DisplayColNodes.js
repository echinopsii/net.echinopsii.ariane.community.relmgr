/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColNodesCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.modules = [];
        $scope.subSet = {parent: {}, modules: []};
        $scope.filenodes = [];
        $scope.curNodeSelected = 0;
        $scope.togMod = true;
        $scope.togSub = true;
        $scope.togFile = true;
        $scope.limitLetterNum = 60;
        var updatedData = false; // flag set when data have been updated
        var tmp_modules = [];
        var tmp_subSet = {parent: {}, modules: []};
        var curBaseObj = {};

        function DistSelected(baseObj){
            if(updatedData || baseObj["node"] != curBaseObj ){
                serviceAjax.module(baseObj["node"]).success(function(data){
                    data.modules.sort(sortOrder);
                    $scope.modules = data.modules;
                    $scope.togMod = true;
                    curBaseObj = baseObj["node"];
                });
            }
            tmp_subSet = $scope.subSet;
            $scope.subSet = {parent: {}, modules: []};
            $scope.togSub = false;
            $scope.curNodeSelected["selected"] = false;
        }
        function PlugSelected(baseObj){
            if(updatedData || baseObj["node"] != curBaseObj){
                serviceAjax.submodule(baseObj["node"]).success(function(data){
                    data.submodules.sort(sortOrder);
                    $scope.subSet.parent = baseObj["node"];
                    $scope.subSet.modules = data.submodules;
                    $scope.curNodeSelected["selected"] = false;
                    curBaseObj = baseObj["node"];
                });
            }
            else{
                $scope.subSet = tmp_subSet;
            }
            $scope.modules = [baseObj["node"]];
            $scope.togSub = true;
            $scope.togMod = true;
            $scope.curNodeSelected["selected"] = false;
        }
        function loadFiles(node){
            serviceAjax.file(node).success(function (data) {
                data.filenodes.sort(sortName);
                $scope.filenodes = data.filenodes;
                $scope.togFile = true;
            });
        }

        $scope.$on('newBaseSelected', function(){
            var flag_curBase = true;
            var baseObj = serviceUI.getBaseObj();
            if (baseObj["obj"] == "dist") {
                DistSelected(baseObj);
            }
            else if (baseObj["obj"] == "plug") {
                PlugSelected(baseObj);
            }
            else {
                flag_curBase = false;
            }
            if (flag_curBase) {
                loadFiles(baseObj["node"]);
            }
        });

        $scope.clickMod = function(module){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != "module")
                ||((nodeObj["obj"] == "module") && (nodeObj["node"] != module))) {
                if(serviceUI.setState({obj: "module", status: "newMod"})) {
                    if (typeof module.selected != "undefined")
                        delete module.selected;
                    serviceUI.setNodeObj({obj: 'module', node: module});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    module.selected = true;
                    $scope.curNodeSelected = module;
                    var idx = $scope.modules.indexOf(module);
                    if(idx > -1){
                        var m = $scope.modules[idx];
                        m['togModSub'] = false;
                        serviceAjax.submodule(m).success(function(data){
                            data.submodules.sort(sortOrder);
                            $scope.subSet.parent = module;
                            $scope.subSet.modules = data.submodules;
                            $scope.togSub = true;
                        });
                    }
                    loadFiles(module);
                    serviceUI.actionBroadcast();
                }
            }
        };
        $scope.clickSub = function(submodule){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != "submodule")
                ||((nodeObj["obj"] == "submodule") && (nodeObj["node"] != submodule))) {
                if(serviceUI.setState({obj: "submodule", status: "new"})) {
                    if (typeof submodule.selected != "undefined")
                        delete submodule.selected;
                    serviceUI.setNodeObj({obj: 'submodule', node: submodule});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    submodule.selected = true;
                    $scope.curNodeSelected = submodule;
                    loadFiles(submodule);
                    serviceUI.actionBroadcast();
                }
            }
        };
        $scope.clickFile = function(file){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != "file")
                ||((nodeObj["obj"] == "file") && (nodeObj["node"] != file))){
                if(serviceUI.setState({obj: "file", status: "new"})) {
                    if (typeof file.selected != "undefined")
                        delete file.selected;
                    serviceUI.setNodeObj({obj: 'file', node: file});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    file.selected = true;
                    $scope.curNodeSelected = file;
                    serviceUI.actionBroadcast();
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
/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColNodesCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.modules = [];
        $scope.subSet = {parent: {}, modules: []};
        $scope.filenodes = [];
        $scope.isPlugin = false;
        $scope.curNodeSelected = 0;
        $scope.togMod = true;
        $scope.togSub = true;
        $scope.togFile = true;
        $scope.limitLetterNum = 60;
        $scope.enableEdit = false; // User can start to edit
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
            $scope.isPlugin = false;
        }
        function PlugSelected(baseObj){
            if(updatedData || baseObj["node"] != curBaseObj){
                serviceAjax.submodule(baseObj["node"]).success(function(data){
                    data.submodules.sort(sortOrder);
                    $scope.subSet.parent = baseObj["node"];
                    $scope.subSet.modules = data.submodules;
                    loadSubmodParent($scope.subSet.modules);
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
            $scope.isPlugin = true;
        }
        function loadFiles(node){
            serviceAjax.file(node).success(function (data) {
                data.filenodes.sort(sortName);
                $scope.filenodes = data.filenodes;
                $scope.togFile = true;
            });
        }
        function loadSubmodParent(submodList){
            var len = submodList.length;
            for(var i=0; i<len; i++){
                var m = submodList[i];
                (function(mod){
                    if(mod.issubparent){
                        serviceAjax.submodule(mod).success(function(data){
                            data.submodules.sort(sortOrder);
                            mod.sublist = data.submodules;
                            mod.togModSub = false;
                            loadSubmodParent(mod.sublist);
                        });
                    }
                })(m)
            }
        }

        $scope.$on('newBaseSelected', function(){
            var flag_curBase = true;
            var baseObj = serviceUI.getBaseObj();
            if (baseObj["obj"] == "distrib") {
                DistSelected(baseObj);
            }
            else if (baseObj["obj"] == "plugin") {
                PlugSelected(baseObj);
            }
            else {
                flag_curBase = false;
            }
            if (flag_curBase) {
                loadFiles(baseObj["node"]);
            }
        });

        $scope.$on('setEnableEdit', function(){
            $scope.enableEdit = serviceUI.getEnableEdit();
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
                            loadSubmodParent($scope.subSet.modules);
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
            if((nodeObj["obj"] != "filenode")
                ||((nodeObj["obj"] == "filenode") && (nodeObj["node"] != file))){
                if(serviceUI.setState({obj: "filenode", status: "new"})) {
                    if (typeof file.selected != "undefined")
                        delete file.selected;
                    serviceUI.setNodeObj({obj: 'filenode', node: file});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    file.selected = true;
                    $scope.curNodeSelected = file;
                    serviceUI.actionBroadcast();
                }
            }
        };

        $scope.addElement = function(type){
            var element = serviceAjax.createEmptyNode(type);
            if(type == 'module')
                var parent = serviceUI.getBaseObj();
            else
                var parent = serviceUI.getSelectedObj();
            if(serviceUI.setState({obj: type, status: 'addDel'})){
                serviceUI.setAddDelObj({obj: type, node: element, parent: JSON.parse(JSON.stringify(parent.node))});
                serviceUI.actionBroadcast();
            }
        };
        $scope.delElement = function(element){

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
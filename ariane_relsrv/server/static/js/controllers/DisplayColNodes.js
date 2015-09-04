/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColNodesCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.modules = [];
        $scope.subSet = {parent: null, modules: []};
        $scope.fileSet = {parent: null, filenodes: []};
        $scope.isPlugin = false;
        $scope.curNodeSelected = 0;
        $scope.togMod = true;
        $scope.togSub = true;
        $scope.togFile = true;
        $scope.limitLetterNum = 50;
        $scope.enableEdit = false; // User can start to edit
        $scope.activeEdit = false;
        $scope.page = 'edition';
        var tmp_subSet = {parent: {}, modules: []};
        var curBaseObj = {};

        function DistSelected(baseObj){
            if(baseObj["node"] != curBaseObj ){
                serviceAjax.module(baseObj["node"]).success(function(data){
                    data.modules.sort(sortOrder);
                    $scope.modules = data.modules;
                    $scope.togMod = true;
                    curBaseObj = baseObj["node"];
                });
            }
            tmp_subSet = $scope.subSet;
            $scope.subSet = {parent: null, modules: []};
            $scope.togSub = false;
            $scope.curNodeSelected["selected"] = false;
            $scope.isPlugin = false;
        }
        function PlugSelected(baseObj){
            if(baseObj["node"] != curBaseObj){
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
            $scope.fileSet.parent = node;
            serviceAjax.file(node).success(function (data) {
                data.filenodes.sort(sortName);
                $scope.fileSet.filenodes = data.filenodes;
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

        $scope.$on('enableEdit', function(){
            $scope.enableEdit = serviceUI.getEnableEdit();
        });
        $scope.$on('activeEdit', function (){
            $scope.activeEdit = serviceUI.getActiveEdit();
        });
        $scope.$on('changePage', function(){
            $scope.page = serviceUI.getPage();
        });

        $scope.$on('deleteNode', function(){
            var delObj = serviceUI.getAddDelObj();
            if(delObj.obj == "module" || delObj.obj == "plugin")
                $scope.modules = $scope.modules.filter(function(e){ return e != delObj.node});

            else if(delObj.obj == "submodule"){
                serviceAjax.submodule($scope.subSet.parent).success(function(data){
                    data.submodules.sort(sortOrder);
                    $scope.subSet.modules = data.submodules;
                    loadSubmodParent($scope.subSet.modules);
                });
            }

            else if(delObj.obj == "filenode")
                $scope.fileSet.filenodes = $scope.fileSet.filenodes.filter(function(e){ return e != delObj.node});

            $scope.curNodeSelected = 0;
        });

        $scope.$on('addNode', function(){
            var addObj = serviceUI.getAddDelObj();
            if(addObj.obj == "module")
                $scope.modules.push(addObj.node);

            else if(addObj.obj == "submodule"){
                serviceAjax.submodule($scope.subSet.parent).success(function(data){
                    data.submodules.sort(sortOrder);
                    $scope.subSet.modules = data.submodules;
                    loadSubmodParent($scope.subSet.modules);
                });
            }

            else if(addObj.obj == "filenode")
                $scope.fileSet.filenodes.push(addObj.node);
        });

        $scope.clickMod = function(module){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != module.node_type)
                ||((nodeObj["obj"] == module.node_type) && (nodeObj["node"] != module))) {
                if(serviceUI.setState({obj: module.node_type, status: "newMod"})) {
                    if (typeof module.selected != "undefined")
                        delete module.selected;
                    serviceUI.setNodeObj({obj: module.node_type, node: module});
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
            if((nodeObj["obj"] != submodule.node_type)
                ||((nodeObj["obj"] == submodule.node_type) && (nodeObj["node"] != submodule))) {
                if(serviceUI.setState({obj: submodule.node_type, status: "new"})) {
                    if (typeof submodule.selected != "undefined")
                        delete submodule.selected;
                    serviceUI.setNodeObj({obj: submodule.node_type, node: submodule});
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
            if((nodeObj["obj"] != file.node_type)
                ||((nodeObj["obj"] == file.node_type) && (nodeObj["node"] != file))){
                if(serviceUI.setState({obj: file.node_type, status: "new"})) {
                    if (typeof file.selected != "undefined")
                        delete file.selected;
                    serviceUI.setNodeObj({obj: file.node_type, node: file});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    file.selected = true;
                    $scope.curNodeSelected = file;
                    serviceUI.actionBroadcast();
                }
            }
        };

        $scope.addElement = function(type, parentBtn){ // type: node type to add into database
            if (typeof parentBtn === "undefined") {parentBtn = "default"}
            if(serviceUI.setState({obj: type, status: 'addEdit'})){
                var element = serviceAjax.createEmptyNode(type);
                var parentAdd = {obj: "", node: {}};
                if(type == 'module')
                    parentAdd = serviceUI.getBaseObj();
                else if (type == 'submodule')
                {
                    parentAdd.node = parentBtn;
                    parentAdd.obj = parentBtn.node_type;
                }
                else if (type == 'filenode')
                    parentAdd = serviceUI.getSelectedObj();
                serviceUI.setAddDelObj({obj: type, node: element, parent: JSON.parse(JSON.stringify(parentAdd.node))});
                serviceUI.actionBroadcast();
            }
        };
        $scope.delElement = function(element){
            if(serviceUI.setState({obj: element.node_type, status: 'delEdit'})){
                serviceUI.setAddDelObj({obj: element.node_type, node: element});
                serviceUI.actionBroadcast();
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
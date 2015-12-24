/*
 Ariane Release Manager
 Ariane Release Server
 AngularJS Controller

 Copyright (C) 2015 echinopsii
 Author: Stan Renia

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as
 published by the Free Software Foundation, either version 3 of the
 License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU Affero General Public License for more details.

 You should have received a copy of the GNU Affero General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Created by stanrenia on 14/08/15.
 */

angular.module('ArianeUI')
    .controller('DisplayColNodesCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.components = [];
        $scope.subSet = {parent: null, components: []};
        $scope.fileSet = {parent: null, filenodes: []};
        $scope.isPlugin = false;
        $scope.curNodeSelected = 0;
        $scope.togComp = true;
        $scope.togSub = true;
        $scope.togFile = true;
        $scope.limitLetterNum = 50;
        $scope.enableEdit = false; // User can start to edit
        $scope.activeEdit = false;
        $scope.page = 'view';
        var tmp_subSet = {parent: {}, components: []};
        var curBaseObj = {};

        function DistSelected(baseObj){
            if(baseObj["node"] != curBaseObj ){
                loadComponents(baseObj["node"]);
            }
            tmp_subSet = $scope.subSet;
            $scope.subSet = {parent: null, components: []};
            $scope.togSub = false;
            $scope.curNodeSelected["selected"] = false;
            $scope.isPlugin = false;
        }
        function PlugSelected(baseObj){
            if(baseObj["node"] != curBaseObj){
                serviceAjax.module(baseObj["node"]).success(function(data){
                    data.modules.sort(sortOrder);
                    $scope.subSet.parent = baseObj["node"];
                    $scope.subSet.modules = data.modules;
                    loadModuleParent($scope.subSet.modules);
                    $scope.curNodeSelected["selected"] = false;
                    curBaseObj = baseObj["node"];
                });
            }
            else{
                $scope.subSet = tmp_subSet;
            }
            $scope.components = [baseObj["node"]];
            $scope.togSub = true;
            $scope.togComp = true;
            $scope.curNodeSelected["selected"] = false;
            $scope.isPlugin = true;
        }
        function loadComponents(dist){
            serviceAjax.component(dist).success(function(data){
                data.components.sort(sortOrder);
                $scope.components = data.components;
                $scope.togComp = true;
                curBaseObj = dist;
            });
        }
        function loadFiles(node){
            $scope.fileSet.parent = node;
            serviceAjax.file(node).success(function (data) {
                data.filenodes.sort(sortName);
                $scope.fileSet.filenodes = data.filenodes;
                $scope.togFile = true;
            });
        }
        function loadModuleParent(moduleList){
            var len = moduleList.length;
            for(var i=0; i<len; i++){
                var m = moduleList[i];
                (function(mod){
                    if(mod.issubparent){
                        serviceAjax.module(mod).success(function(data){
                            data.modules.sort(sortOrder);
                            mod.sublist = data.modules;
                            mod.togModSub = false;
                            loadModuleParent(mod.sublist);
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

        $scope.$on('reloadComponents', function(){
            loadComponents(serviceUI.getBaseObj().node);
        });

        $scope.$on('enableEdit', function(){
            $scope.enableEdit = serviceUI.getEnableEdit();
        });
        $scope.$on('activeEdit', function (){
            $scope.activeEdit = serviceUI.getActiveEdit();
        });
        $scope.$on('changePage', function(){
            $scope.page = serviceUI.getPage();
            if($scope.page == "releaseA"){
                var baseObj = serviceUI.getBaseObj();
                loadComponents(baseObj.node);
            }
        });

        $scope.$on('deleteNode', function(){
            var delObj = serviceUI.getAddDelObj();
            if(delObj.obj == "component" || delObj.obj == "plugin")
                $scope.components = $scope.components.filter(function(e){ return e != delObj.node});

            else if(delObj.obj == "module"){
                serviceAjax.module($scope.subSet.parent).success(function(data){
                    data.modules.sort(sortOrder);
                    $scope.subSet.modules = data.modules;
                    loadModuleParent($scope.subSet.modules);
                });
            }

            else if(delObj.obj == "filenode")
                $scope.fileSet.filenodes = $scope.fileSet.filenodes.filter(function(e){ return e != delObj.node});

            $scope.curNodeSelected = 0;
        });

        $scope.$on('addNode', function(){
            var addObj = serviceUI.getAddDelObj();
            if(addObj.obj == "component")
                $scope.components.push(addObj.node);

            else if(addObj.obj == "module"){
                serviceAjax.module($scope.subSet.parent).success(function(data){
                    data.modules.sort(sortOrder);
                    $scope.subSet.modules = data.modules;
                    loadModuleParent($scope.subSet.modules);
                });
            }

            else if(addObj.obj == "filenode")
                $scope.fileSet.filenodes.push(addObj.node);
        });
        $scope.$on('update', function(){
            var selObj = serviceUI.getSelectedObj();
            loadFiles(selObj.node);
        });

        $scope.clickComponent = function(component){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != component.node_type)
                ||((nodeObj["obj"] == component.node_type) && (nodeObj["node"] != component))) {
                if(serviceUI.setState({obj: component.node_type, status: "newComp"})) {
                    if (typeof component.selected != "undefined")
                        delete component.selected;
                    serviceUI.setNodeObj({obj: component.node_type, node: component});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    component.selected = true;
                    $scope.curNodeSelected = component;
                    var idx = $scope.components.indexOf(component);
                    if(idx > -1){
                        var m = $scope.components[idx];
                        m['togModSub'] = false;
                        serviceAjax.module(m).success(function(data){
                            data.modules.sort(sortOrder);
                            $scope.subSet.parent = component;
                            $scope.subSet.modules = data.modules;
                            loadModuleParent($scope.subSet.modules);
                            $scope.togSub = true;
                        });
                    }
                    loadFiles(component);
                    serviceUI.actionBroadcast();
                }
            }
        };
        $scope.clickSub = function(module){
            var nodeObj = serviceUI.getNodeObj();
            if((nodeObj["obj"] != module.node_type)
                ||((nodeObj["obj"] == module.node_type) && (nodeObj["node"] != module))) {
                if(serviceUI.setState({obj: module.node_type, status: "new"})) {
                    if (typeof module.selected != "undefined")
                        delete module.selected;
                    serviceUI.setNodeObj({obj: module.node_type, node: module});
                    if ($scope.curNodeSelected != 0)
                        $scope.curNodeSelected["selected"] = false;
                    module.selected = true;
                    $scope.curNodeSelected = module;
                    loadFiles(module);
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
                if(type == 'component')
                    parentAdd = serviceUI.getBaseObj();
                else if (type == 'module')
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
        $scope.toggleCompList = function(){
            $scope.togComp = !$scope.togComp;
        };
        $scope.isCompToggle = function(){
            return $scope.togComp;
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
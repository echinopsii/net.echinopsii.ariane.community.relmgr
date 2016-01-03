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
    .controller('EditCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.selectedObj = {};
        var backupObj = {obj: "default", node:{}};
        $scope.enableEdit = false; // User can start to edit (only SNAPSHOT versions are editable)
        $scope.activeEdit = false; // User is editing (after changing input property or after click on Add/Delete)
        $scope.isDeleting = false;
        $scope.isNewNode = false;
        $scope.isDiff = false;
        $scope.choice = {deleting: "no"};
        $scope.parent = {};
        $scope.page = 'view';
        var editionTemplates = [{name: 'view', url:'editionViewEdit.html'}, {name:'releaseA', url:'editionViewEdit.html'}, {name:'releaseB', url:'editionDiff.html'}];
        $scope.editionTemplate = editionTemplates[0];
        var templateErr = "err.html";
        var editablesView = {
            component: ['name', 'version', 'type'],
            plugin: ["name", "version"],
            module: ['name', 'version', 'groupId', 'artifactId', 'order'],
            filenode: ["name", "type", "path"],
            distrib: ["name", "version", "url_repos"]
        };
        var editablesForNewNode = {
            component: ['name', 'version', 'order', 'type'],
            plugin: ["name", "version"],
            module: ["name", "order"],
            filenode: ["name", "version", "type", "path"],
            distrib: ["name", "version", "url_repos"]
        };
        $scope.filediff = {diff: [{line: "", color: ""}], message: ""};
        /* ********************* EVENTS ********************* */
        $scope.$on('handleEdition', function(){ // event called on page = 'view' | 'releaseA'
            if(!$scope.activeEdit) {
                var old_enableEdit = $scope.enableEdit;
                backupObj = serviceUI.getSelectedObj();
                if (backupObj != -1){
                    var baseObj = serviceUI.getBaseObj();
                    $scope.selectedObj = JSON.parse(JSON.stringify(backupObj)); // copy JSON object
                    for (var property in $scope.selectedObj.node) {
                        if ($scope.selectedObj.node.hasOwnProperty(property)) {
                            console.log(typeof $scope.selectedObj.node[property] + '-' + $scope.selectedObj.node[property]);
                        }
                    }
                    $scope.isNewNode = false;
                    $scope.isDeleting = false;
                    $scope.parent = {};
                    $scope.enableEdit = serviceUI.checkEditable(); // IMPORTANT - Enable properties edition if true
                }
                else
                    $scope.enableEdit = false;

                if(old_enableEdit != $scope.enableEdit)
                    setScopeAndNotify('enableEdit', $scope.enableEdit);
            }
        });

        $scope.$on('handleDiff', function(){
                var fileObj = serviceUI.getSelectedObj();
                if (backupObj != -1 && fileObj.obj == "filenode"){
                    $scope.selectedObj = fileObj;
                    serviceAjax.getFileDiff(fileObj.node)
                        .success(function(data){
                            $scope.isDiff = data.isDiff;
                            $scope.filediff.diff = [{line:"", color:""}];
                            for (var i= 0, len=data.diff.length; i<len; i++){
                                $scope.filediff.diff.push({line: data.diff[i], color: ""})
                            }
                            if ($scope.isDiff)
                                colorDiffLines();
                        })
                        .error(function(data){
                            $scope.filediff.diff = "** Error while searching for differences **";
                        })
                }
                else{
                    $scope.selectedObj = null;
                    $scope.filediff.diff = "";
                }
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

        $scope.$on('changePage', function(){
            $scope.page = serviceUI.getPage();
            for(var i= 0, len=editionTemplates.length, flagErr=true; i<len; i++){
                if(editionTemplates[i].name == $scope.page){
                    $scope.editionTemplate = editionTemplates[i];
                    $scope.filediff = {diff: [{line: "", color: ""}], message: ""};
                    if($scope.page == "releaseA")
                        $scope.enableEdit = false;
                    flagErr = false;
                    break;
                }
            }
            if(flagErr)
                $scope.editionTemplate = templateErr;
        });

        /* ********************* Main FUNCTIONS ********************* */

        $scope.setActiveEdit = function(){
            if($scope.enableEdit){
                serviceUI.setState({obj: "selectedObj", status:"editing"});
                setScopeAndNotify('activeEdit', true);
            }
        };
        $scope.getTypeOf = function(value) {
            return typeof value;
        };
        $scope.isPropEditable = function(prop){
            if($scope.isNewNode)
            {
                return (editablesForNewNode[$scope.selectedObj.obj].indexOf(prop) > -1);
            }
            else{
                return (editablesView[$scope.selectedObj.obj].indexOf(prop) > -1);
            }
        };

        $scope.save = function(){
            if($scope.activeEdit){
                if($scope.isNewNode){ // CREATING
                    serviceAjax.create($scope.selectedObj.node, $scope.selectedObj.obj, $scope.parent).success(function(data){
                        $scope.selectedObj.node = data[$scope.selectedObj.obj];
                        updateJSON(backupObj.node, $scope.selectedObj.node); // also updates serviceUI's addDelObj
                        serviceUI.actionBroadcast('addNode');
                        serviceUI.setState({obj: backupObj.obj, status: "done"});
                        setScopeAndNotify('activeEdit', false);
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
                            serviceUI.setState({obj: backupObj.obj, status: "done"});
                            setScopeAndNotify('activeEdit', false);
                        });
                    }
                    $scope.isDeleting = false;
                }
                else{ // UPDATING
                    serviceAjax.save($scope.selectedObj.node, $scope.selectedObj.obj)
                        .success(function(data){
                            updateJSON(backupObj.node, $scope.selectedObj.node);
                            serviceUI.setState({obj: backupObj.obj, status: "done"});
                            setScopeAndNotify('activeEdit', false);
                            serviceUI.actionBroadcast('update');
                        })
                        .error(function(data){
                            serviceUI.setState({obj: backupObj.obj, status: "done"});
                            setScopeAndNotify('activeEdit', false);
                            serviceUI.setNotifyLog("error", "clickSave", "An Error occured after clicking on Save: "+ data.message);
                        });
                }
            }
        };

        $scope.cancel = function(){
          if($scope.activeEdit){
              $scope.selectedObj = JSON.parse(JSON.stringify(backupObj));
              serviceUI.setState({obj: backupObj.obj, status: "done"});
              setScopeAndNotify('activeEdit', false);
          }
        };

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

        function colorDiffLines(){
            var lines = $scope.filediff.diff;
            for (var i= 0, len=lines.length ; i<len; i++){
                var line = String(lines[i].line);
                if (line.indexOf('---') == 0 || line.indexOf('+++') == 0 || line.indexOf('index') == 0 || line.indexOf('diff') == 0)
                    lines[i].color = "DiffWhite";
                else if(line.indexOf('+') == 0)
                    lines[i].color = "DiffGreen";
                else if(line.indexOf('-') == 0)
                    lines[i].color = "DiffRed";
                else if (line.indexOf('@@') == 0)
                    lines[i].color = "DiffBlue";
            }
        }

        function updateJSON(obj, model){
            for (var key in model){
                if(typeof obj[key] != "undefined"){
                    obj[key] = model[key];
                }
            }
        }
    });
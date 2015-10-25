/*
 Ariane Release Manager
 Ariane Release Server
 AngularJS Service

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
    .factory('serviceAjax', function serviceAjax($http, $rootScope) {
        var nodeKeys = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos','nID', 'type', 'path'];
        function cleanElementAttr(element){
            var copy = JSON.parse(JSON.stringify(element));
            for(var key in element){
                if(nodeKeys.indexOf(key) == -1)
                    delete copy[key];
            }
            return copy;
        }

        return {
            createEmptyNode: function(type){
                if(type == "distrib"){
                    return {name: "", version: "", node_type:"distrib", nID:0};
                }
                else if(type == 'plugin')
                    return {name: "", version: "", node_type:"plugin", nID:0};
                else if(type == "module"){
                    return {name: "", version: "", git_repos: "", type: "", order: "", node_type:"module", nID:0};
                }
                else if(type == "submodule")
                    return {name: "", version: "", groupId: "", artifactId: "", order: "", node_type:"submodule", issubparent:"no", nID:0};
                else if(type == "filenode")
                    return {name: "", version: "", type: "", path: "",node_type:"filenode", nID:0};
            },
            distrib: function(version){
                if (version == "")
                    return $http.get("http://localhost:5000/rest/distrib");
                else
                    return $http.get("http://localhost:5000/rest/distrib/" + version);
            },
            distribCopy: function(dist){
                var cdist = cleanElementAttr(dist);
                return $http.post("http://localhost:5000/rest/distrib", {distrib: JSON.stringify(cdist), copy: true});
            },
            distribManager: function(mode, action, distrib){
                action = (typeof action === "undefined" ? "" : action);
                distrib = (typeof distrib === "undefined" ? "" : JSON.stringify(cleanElementAttr(distrib)));
                return $http.post("http://localhost:5000/rest/distribmanager", {mode: mode, action: action, distrib: distrib})
            },
            module: function(dist){
                if (dist.version != "")
                    return $http.get("http://localhost:5000/rest/module?version="+dist.version);
            },
            plugin: function(version){
                if (version != "")
                    return $http.get("http://localhost:5000/rest/plugin?version="+version);
            },
            submodule: function(modplug){
                var element = cleanElementAttr(modplug);
                var data = {"parent": element};
                var config = {params: data};
                return $http.get("http://localhost:5000/rest/submodule", config);
            },
            file: function(element){
                var c_element = cleanElementAttr(element);
                if (c_element != {}){
                    var data = {"parent": c_element};
                    var config = {params: data};
                    return $http.get("http://localhost:5000/rest/filenode", config);
                }
            },
            save: function(element, type){
                var c_element = cleanElementAttr(element);
                var data = {};
                data[type] = JSON.stringify(c_element);
                var config = {data: data, headers: {'Content-Type': 'application/json'}, dataType:'json'};
                return $http.post("http://localhost:5000/rest/"+type, data);
                // Handle res
            },
            create: function(element, type, parent){
                var c_element = cleanElementAttr(element);
                var data = {};
                for (var key in c_element){
                    data[key] = c_element[key];
                }
                if(type == "submodule"){
                    if(typeof element.issubparent != "undefined") { data["isSubModuleParent"] = element.issubparent ? 'yes' : 'no';}
                    var c_parent = cleanElementAttr(parent);
                    data["parent"] = JSON.stringify(c_parent);
                    return $http.post("http://localhost:5000/rest/"+type, data);
                }
                else if(type == "filenode"){
                    var c_parent = cleanElementAttr(parent);
                    data["parent"] = JSON.stringify(c_parent);
                    return $http.post("http://localhost:5000/rest/"+type, data);
                }
                else{
                    data["dist_version"] = parent.version;
                    return $http.post("http://localhost:5000/rest/"+type, data);
                }
            },
            delete: function(element){
                if (typeof element.nID === "undefined" || typeof element.node_type === "undefined")
                    return false; // false means error
                if(element.nID <= 0 || element.node_type == "")
                    return false;
                var type = element.node_type;
                return $http.delete("http://localhost:5000/rest/"+type+'/'+element.nID.toString());
            },
            generate: function (command, version) {
                var data = {command: command + ' ' + version};
                return $http.post("http://localhost:5000/rest/generation", data);
            },
            buildZip: function(version, tags){
                var data = {version: version, tags: tags}; // tags is boolean
                return $http.post("http://localhost:5000/rest/buildzip", data);
            },
            commit: function(mode, task, comment, isdistrib, isplugin){
                var data = {isdistrib: isdistrib,isplugin: isplugin, mode: mode, task: task, comment: comment};
                return $http.post("http://localhost:5000/rest/commit", data);
            },
            deleteZip: function(version){
                var data = {version: version};
                var config = {params: data};
                return $http.delete("http://localhost:5000/rest/getdelzip", config);
            },
            getFileDiff: function(filenode){
                if(filenode.node_type == "filenode"){
                    var data = {"filenode": filenode};
                    var config = {params: data};
                    return $http.get("http://localhost:5000/rest/filediff", config);
                }
            },
            checkout: function(version, mode, isdistrib, isplugin){
                return $http.post("http://localhost:5000/rest/checkout", {version: version, isdistrib: isdistrib, isplugin: isplugin, mode: mode});
            },
            resetDB: function(){
                return $http.post("http://localhost:5000/rest/reset");
            }
        };
    });
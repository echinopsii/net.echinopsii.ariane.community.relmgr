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

angular.module('ArianeUI')
    .factory('serviceAjax', function serviceAjax($http, $rootScope) {
        var url = CONFIG.url;
        var port = CONFIG.port;
        var nodeKeys = ['name', 'version', 'groupId', 'artifactId', 'deployable', 'extension',
            'order', 'git_repos','nID', 'type', 'build', 'path', 'url_repos'];
        function cleanElementAttr(element){
            var copy = JSON.parse(JSON.stringify(element));
            for(var key in element){
                if(nodeKeys.indexOf(key) == -1)
                    delete copy[key];
            }
            return copy;
        }

        return {
            define_url: function(url_) {
                url = url_;
            },
            createEmptyNode: function(type){
                if(type == "distrib"){
                    return {name: "", version: "", node_type:"distrib", nID:0};
                }
                else if(type == 'plugin')
                    return {name: "", version: "", node_type:"plugin", nID:0};
                else if(type == "component"){
                    return {name: "", version: "", git_repos: "", type: "", order: "", node_type:"component", nID:0};
                }
                else if(type == "module")
                    return {name: "", version: "", groupId: "", artifactId: "", order: "", node_type:"module", nID:0};
                else if(type == "filenode")
                    return {name: "", version: "", type: "", path: "",node_type:"filenode", nID:0};
            },
            snapshots: function(version) {
                if (version == "")
                    return $http.get("http://" + url + ":" + port + "/rest/snapshot");
                else
                    return $http.get("http://" + url + ":" + port + "/rest/snapshot/" + version);
            },
            releases: function(version){
                if (version == "")
                    return $http.get("http://" + url + ":" + port + "/rest/distrib");
                else
                    return $http.get("http://" + url + ":" + port + "/rest/distrib/" + version);
            },
            distribManager: function(mode, action, distrib){
                action = (typeof action === "undefined" ? "" : action);
                distrib = (typeof distrib === "undefined" ? "" : JSON.stringify(cleanElementAttr(distrib)));
                return $http.post("http://" + url + ":" + port + "/rest/distribmanager", {mode: mode, action: action, distrib: distrib})
            },
            component: function(dist){
                if (dist.version != "")
                    return $http.get("http://" + url + ":" + port + "/rest/component?version="+dist.version);
            },
            plugin: function(version){
                if (version != "")
                    return $http.get("http://" + url + ":" + port + "/rest/plugin?version="+version);
            },
            module: function(modplug){
                var element = cleanElementAttr(modplug);
                var data = {"parent": element};
                var config = {params: data};
                return $http.get("http://" + url + ":" + port + "/rest/module", config);
            },
            file: function(element){
                var c_element = cleanElementAttr(element);
                if (c_element != {}){
                    var data = {"parent": c_element};
                    var config = {params: data};
                    return $http.get("http://" + url + ":" + port + "/rest/filenode", config);
                }
            },
            save: function(element, type){
                var c_element = cleanElementAttr(element);
                var data = {};
                data[type] = JSON.stringify(c_element);
                var config = {data: data, headers: {'Content-Type': 'application/json'}, dataType:'json'};
                return $http.post("http://" + url + ":" + port + "/rest/"+type, data);
                // Handle res
            },
            create: function(element, type, parent){
                var c_element = cleanElementAttr(element);
                var data = {};
                for (var key in c_element){
                    data[key] = c_element[key];
                }
                if(type == "module"){
                    var c_parent = cleanElementAttr(parent);
                    data["parent"] = JSON.stringify(c_parent);
                    return $http.post("http://" + url + ":" + port + "/rest/"+type, data);
                }
                else if(type == "filenode"){
                    var c_parent = cleanElementAttr(parent);
                    data["parent"] = JSON.stringify(c_parent);
                    return $http.post("http://" + url + ":" + port + "/rest/"+type, data);
                }
                else{
                    data["dist_version"] = parent.version;
                    return $http.post("http://" + url + ":" + port + "/rest/"+type, data);
                }
            },
            delete: function(element){
                if (typeof element.nID === "undefined" || typeof element.node_type === "undefined")
                    return false; // false means error
                if(element.nID <= 0 || element.node_type == "")
                    return false;
                var type = element.node_type;
                return $http.delete("http://" + url + ":" + port + "/rest/"+type+'/'+element.nID.toString());
            },
            generate: function (command, version) {
                var data = {command: command + ' ' + version};
                return $http.post("http://" + url + ":" + port + "/rest/generation", data);
            },
            buildZip: function(version, tags, action){
                var data = {version: version, tags: tags, action: action}; // tags is boolean
                return $http.post("http://" + url + ":" + port + "/rest/buildzip", data);
            },
            commit: function(mode, task, comment, isdistrib, isplugin){
                var data = {isdistrib: isdistrib,isplugin: isplugin, mode: mode, task: task, comment: comment};
                return $http.post("http://" + url + ":" + port + "/rest/commit", data);
            },
            deleteZip: function(version){
                var data = {version: version};
                var config = {params: data};
                return $http.delete("http://" + url + ":" + port + "/rest/getdelzip", config);
            },
            getFileDiff: function(filenode){
                if(filenode.node_type == "filenode"){
                    var data = {"filenode": filenode};
                    var config = {params: data};
                    return $http.get("http://" + url + ":" + port + "/rest/filediff", config);
                }
            },
            checkout: function(version, mode, isdistrib, isplugin){
                return $http.post("http://" + url + ":" + port + "/rest/checkout", {version: version, isdistrib: isdistrib, isplugin: isplugin, mode: mode});
            },
            resetDB: function(){
                return $http.post("http://" + url + ":" + port + "/rest/reset");
            }
        };
    });

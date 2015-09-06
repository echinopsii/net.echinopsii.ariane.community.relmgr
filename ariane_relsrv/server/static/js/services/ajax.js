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
                var res = $http.post("http://localhost:5000/rest/"+type, data);
                return true;
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
            buildZip: function(version){
                var data = {version: version};
                return $http.post("http://localhost:5000/rest/buildzip", data);
            },
            getFileDiff: function(filenode){
                if(filenode.node_type == "filenode"){
                    var data = {"filenode": filenode};
                    var config = {params: data};
                    return $http.get("http://localhost:5000/rest/filediff", config);
                }
            },
            checkout: function(version){
                return $http.post("http://localhost:5000/rest/checkout", {version: version});
            },
            resetDB: function(){
                return $http.post("http://localhost:5000/rest/reset");
            }
        };
    });
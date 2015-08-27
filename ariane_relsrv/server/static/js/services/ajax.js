/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .factory('serviceAjax', function serviceAjax($http, $rootScope) {
        var nodeKeys = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos','nID', 'type'];
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
                if(type == "distrib" || type == "plugin"){
                    return {name: "", version: ""};
                }
                else if(type == "module"){
                    return {name: "", version: "", git_repos: "", type: "", order: "", nID: 0};
                }
                else if(type == "submodule")
                    return {name: "", version: "", groupId: "", artifactId: "", order: ""};
                else if(type == "filenode")
                    return {name: "", version: "", type: ""};
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
                if(type == "submodule" || type == "filenode"){
                    if(typeof element.issubparent != "undefined") { data["isSubModuleParent"] = element.issubparent ? 'yes' : 'no';}
                    var c_parent = cleanElementAttr(parent);
                    data["parent"] = JSON.stringify(c_parent);
                    return $http.post("http://localhost:5000/rest/"+type, data);
                }
                else{
                    data["dist_version"] = parent.version;
                    return $http.post("http://localhost:5000/rest/"+type, data);
                }
            }
        };
    });
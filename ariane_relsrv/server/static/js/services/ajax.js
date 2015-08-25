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
                if(type == 'dist')
                    type = 'distrib';
                if(type == 'file')
                    type = 'filenode';
                if(type == 'plug')
                    type = 'plugin';
                var c_element = cleanElementAttr(element);
                var data = {};
                data[type] = JSON.stringify(c_element);
                var config = {data: data, headers: {'Content-Type': 'application/json'}, dataType:'json'};
                var res = $http.post("http://localhost:5000/rest/"+type, data);
                return true;
                // Handle res
            }
        };
    });
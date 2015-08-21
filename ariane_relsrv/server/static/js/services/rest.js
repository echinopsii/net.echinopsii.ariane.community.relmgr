/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .factory('serviceAjax', function serviceAjax($http, $rootScope) {
        var state = {obj: "default", status: "none"};
        var baseObj = {obj:"default", node:{}};
        var nodeObj = {obj:"default", node:{}};
        var nodeKeys = ['name', 'version', 'groupId', 'artifactId', 'order', 'git_repos','nID', 'type'];
        // var loup = {j:"lol"}; // for test:
        function cleanElementAttr(element){
            var copy = JSON.parse(JSON.stringify(element));
            for(var key in element){
                if(nodeKeys.indexOf(key) == -1)
                    delete copy[key];
            }
            return copy;
        }

        return {
            getState: function(){
                return state;
            },
            getBaseObj: function(){
                return baseObj;
            },
            getNodeObj: function(){
                return nodeObj;
            },
            setState: function(newstate){
                if(newstate.status == "editing")
                    state = newstate;
                if(state.status != "editing"){
                    state = newstate;
                    return true;
                }
                if(newstate.status == "done"){
                    state = newstate;
                    state.status = "default";
                }
                return false;
            },
            setBaseObj: function(newbaseobj){
                baseObj = newbaseobj;
            },
            setNodeObj: function(newnodeobj){
                nodeObj = newnodeobj;
            },
            actionBroadcast: function(){
                if(state.status.indexOf("new") > -1){
                    if(state.status == 'newBase')
                        $rootScope.$broadcast('newBaseSelected');
                    $rootScope.$broadcast('handleEdition');
                }
                //else if(state.status == "newMod") ... eventually to handle each element with its own things
                else{
                    state.obj = "default";
                    state.status = "default";
                }
            },
            getSelectedObj: function(){
                if (((state.obj == "dist") || (state.obj == "plug")) && (baseObj.obj == state.obj))
                    return baseObj;
                if(((state.obj == "module") || (state.obj == "submodule") || (state.obj == "file")) && (nodeObj.obj == state.obj))
                    return nodeObj;
                return -1;
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
/* getTest: function(){
 return loup;
 },
 setTest: function(l){
 loup = l;
 }, */
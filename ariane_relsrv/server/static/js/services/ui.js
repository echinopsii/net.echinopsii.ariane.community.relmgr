/**
 * Created by stanrenia on 24/08/15.
 */
angular.module('ArianeUI')
    .factory('serviceUI', function serviceAjax($http, $rootScope) {
        var state = {obj: "default", status: "none"};
        var baseObj = {obj:"default", node:{}};
        var nodeObj = {obj:"default", node:{}};
        var addDelObj = {obj: "default", node: {}};
        // var loup = {j:"lol"}; // for test:
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
            getAddDelObj: function(){
                return addDelObj;
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
            setAddDelObj: function (newAddDelObj) {
                addDelObj = newAddDelObj;
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
            }
        };
    });
/* getTest: function(){
 return loup;
 },
 setTest: function(l){
 loup = l;
 }, */
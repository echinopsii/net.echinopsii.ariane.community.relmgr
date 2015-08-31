/**
 * Created by stanrenia on 24/08/15.
 */
angular.module('ArianeUI')
    .factory('serviceUI', function serviceAjax($http, $rootScope) {
        var state = {obj: "default", status: "none"};
        var baseObj = {obj:"default", node:{}};
        var nodeObj = {obj:"default", node:{}};
        var addDelObj = {obj: "default", node: {}};
        var selectedObj = {obj: "default", node: {}};
        var enableEdit = false;
        var activeEdit = false;
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
            getEnableEdit: function(){
                return enableEdit;
            },
            getActiveEdit: function(){
                return activeEdit;
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
                selectedObj = baseObj;
            },
            setNodeObj: function(newnodeobj){
                nodeObj = newnodeobj;
                if(newnodeobj.obj != "default")
                    selectedObj = nodeObj;
            },
            setEnableEdit: function(enableFlag){
                enableEdit = enableFlag;
            },
            setActiveEdit: function(activeFlag){
                activeEdit = activeFlag;
            },
            setAddDelObj: function (newAddDelObj) {
                 addDelObj = newAddDelObj;
            },
            actionBroadcast: function(optionalEvent){
                if (typeof optionalEvent === 'undefined') { optionalEvent = 'default'; }
                if(optionalEvent == "default"){
                    if(state.status.indexOf("new") > -1){
                        if(state.status == 'newBase')
                            $rootScope.$broadcast('newBaseSelected');
                        $rootScope.$broadcast('handleEdition');
                    }
                    else if(state.status == "addEdit" || state.status == "delEdit"){
                        $rootScope.$broadcast(state.status);
                    }
                    //else if(state.status == "newMod") ... eventually to handle each element with its own things
                    else{
                        state.obj = "default";
                        state.status = "default";
                    }
                }
                else{
                    $rootScope.$broadcast(optionalEvent);
                }
            },
            getSelectedObj: function(){
                if (selectedObj.obj != "default")
                    return selectedObj;
                else
                    return -1;
            },
            checkEditable: function(){
                return(baseObj.node.version.indexOf("SNAPSHOT") > -1);
            }
        };
    });
/* getTest: function(){
 return loup;
 },
 setTest: function(l){
 loup = l;
 }, */
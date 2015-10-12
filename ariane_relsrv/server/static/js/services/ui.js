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
 * Created by stanrenia on 24/08/15.
 */

angular.module('ArianeUI')
    .factory('serviceUI', function serviceAjax($http, $rootScope) {
        var state = {obj: "default", status: "none"};
        var baseObj = {obj:"default", node:{}};
        var nodeObj = {obj:"default", node:{}};
        var addDelObj = {obj: "default", node: {}};
        var selectedObj = {obj: "default", node: {}};
        var pageList = ["view", "releaseA", "releaseB"];
        var page = "view";
        var mode = "Release";
        var enableEdit = false;
        var activeEdit = false;
        var log = {type: "", message: "", mode: ""};
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
            getLog: function(){
                return log;
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
            getMode: function () {
                return mode;
            },
            getPage: function(){
                return page;
            },
            setState: function(newstate){
                if(state.status != "generation" && state.status != "zip" && newstate.status == "editing")
                    state = newstate;
                if(state.status != "generation" && state.status != "zip" && state.status != "editing"){
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
            setNotifyLog: function(type, mode, message){
                log = {type: type, mode: mode, message: message};
                this.actionBroadcast('updateLog');
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
            setMode: function(newmode){
                mode = newmode;
            },
            setPage: function(newpage){
                page = newpage;
            },
            changePage: function(buttonType){
                var oldPage = page;
                if(buttonType == "release"){
                    if(page == "view"){
                        page = "releaseA";
                    }
                    else if(page == "releaseA"){
                        page = "releaseB";
                    }
                    else if(page == "releaseB"){
                        page = "releaseC";
                    }
                    else if(page == "releaseC")
                        page = "releaseD";
                    else if(page == "releaseD")
                        page = "releaseDEV";
                    else if(page == "releaseDEV")
                        page = "releaseA";
                }
                else if (buttonType == "view" || buttonType == "rollback")
                {
                    if(page == "releaseA" || page =="releaseB" || page == "releaseC" || page == "releaseD" || page == "releaseDEV")
                        page = "view";
                }
                return oldPage != page;
            },
            actionBroadcast: function(optionalEvent){
                if (typeof optionalEvent === 'undefined') { optionalEvent = 'default'; }
                if(optionalEvent == "default"){
                    if(state.status.indexOf("new") > -1){
                        if(state.status == 'newBase')
                            $rootScope.$broadcast('newBaseSelected');
                        if(page != "releaseB")
                            $rootScope.$broadcast('handleEdition');
                        else if(page == "releaseB" || "releaseC")
                            $rootScope.$broadcast('handleDiff');
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
                // Check if the selected distribution is editable. An editable distribution is only a copy and has the property 'editable' == 'true'
                return(baseObj.node.version.indexOf("SNAPSHOT") > -1 || baseObj.node.snapshot == true ||baseObj.node.editable == "true");
            },
            isDistribCopy: function(dist){
                return (dist.version.indexOf("copyTemp") > -1);
            }
        };
    });
/* getTest: function(){
 return loup;
 },
 setTest: function(l){
 loup = l;
 }, */
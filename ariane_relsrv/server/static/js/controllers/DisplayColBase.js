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
    .controller('DisplayColBaseCtrl', function ($scope, serviceAjax, serviceUI) {
        // data
        $scope.dists = [];
        var plugins = [];
        $scope.pluginsDict = {Names: [], PluginSet: []};
        $scope.curBaseSelected = 0;
        // state
        $scope.enableEdit = false;
        $scope.activeEdit = false;
        $scope.page = 'view';
        $scope.mode = "Release";  // mode = "Release" | "DEV"
        var pageStates = {relC: "commit"};
        var pageErrors = {relC: ""};
        $scope.modeTitle = {selected: "", releaseA: "Edition - Validate to generate files", releaseB: "Check file differences - Validate to build zip",
                            releaseC: "Download zip - Validate to commit+tag+push files AND to build the new zip from tags", releaseD: "Download new zip from tags - Validate to go manage Plugins",
                            releaseE: "Manage Plugins",releaseDEV: "Choose the new DEV SNAPSHOT version - Validate to create"};
        // templates
        var baseTemplates = [{name: 'view', url:'baseEdition.html'}, {name:'releaseA', url:'baseRelA.html'}, {name:'releaseB', url:'baseRelB.html'},
                             {name:'releaseC', url:'baseRelC.html'}, {name:'releaseD', url:'baseRelD.html'}, {name:'releaseE', url:'baseRelE.html'},
                             {name:'releaseDEV', url:'baseRelDEV.html'}];
        $scope.baseTemplate = baseTemplates[0];
        var templateErr = "err.html";
        // inputs/outputs
        $scope.confirmValRoll = {msg: "VALIDATE", confirm:false, active: false, disableVal: false};
        $scope.commandsRelA = {Core: "core_only", Modules_Only: "module_only", Plugins_Only: "plugin_only", TestOK:"testOK", TestNOK: "testNOK"};
        $scope.commandsRelE = {Plugins_Only: "plugin_only"};
        $scope.cmdRelC = {task: null, comment: null, warning: "You must fill everything", warn: false};
        $scope.cmdRelDEV = {version: null, warning: "You must fill the version field", warn: false};
        $scope.cmdGen = {cmd: $scope.commandsRelA["Modules_Only"]};
        $scope.download = {zip: [], selected: null, click: false};
        $scope.btnActive = {release: false, refresh: true, reset: {active: true, showConfirm: false}};
        // view variables
        $scope.warnRelA = {warning: "", warningRel: "Distribution Version MUST NOT contain '-SNAPSHOT' when releasing the new Release Distribution",
                           warningDEV: "Distribution Version MUST contain '-SNAPSHOT' when releasing the new DEV Distribution"};
        $scope.togDist = true;
        $scope.togPlug = true;
        /* ********************* Main FUNCTIONS ********************* */
        (function init(){
            loadDistribs();
        })();
        function loadDistribs(callFunction){
            serviceAjax.distrib('').success(function(data) // Init: loading data (distributions ans plugins)
            {
                data.distribs.sort(sortVersion);
                $scope.dists = data.distribs;
                var len_dist = $scope.dists.length;
                $scope.dists = $scope.dists.filter(function(e){ return !serviceUI.isDistribCopy(e)});
                $scope.btnActive.release = (len_dist == $scope.dists.length);
                toggleBtnRefresh();
                if (typeof callFunction !== "undefined")
                    callFunction();
                loadPlugins();
            });
        }
        function loadPlugins(){
            var dlen = $scope.dists.length;
            for (var i=0; i < dlen; i++) {
                var d = $scope.dists[i];
                serviceAjax.plugin(d.version).success(function(data){
                    if(data.plugins.length > 1)
                        data.plugins.sort(sortVersion);
                    plugins = data.plugins;
                    var plen = plugins.length;
                    for (var j=0; j<plen; j++){
                        var flagName = false;
                        var p = plugins[j];
                        p["dist_version"] = d.version;
                        for (var l=0; l< $scope.pluginsDict.Names.length; l++){
                            if ($scope.pluginsDict.Names[l].name == p.name){
                                flagName = true;
                                break;
                            }
                        }
                        if (!flagName){
                            $scope.pluginsDict.Names.push({
                                name: p.name,
                                show: false,
                                "ShowHide": function(){
                                    this.show = !this.show;
                                }});
                            $scope.pluginsDict.PluginSet.push({"name": p.name, "version": p.version, "selected": false,"plugin": p});
                        }
                        else{
                            var flagVersion = false;
                            var pvlen = $scope.pluginsDict.PluginSet.length;
                            for (var k=0; k < pvlen; k++){
                                if (p.version == $scope.pluginsDict.PluginSet[k].version && p.name == $scope.pluginsDict.PluginSet[k].name){
                                    flagVersion = true;
                                    break;
                                }
                            }
                            if (!flagVersion){
                                $scope.pluginsDict.PluginSet.push({"name": p.name, "version": p.version, "selected": false,"plugin": p});
                            }
                        }
                    }
                    $scope.pluginsDict.Names.sort(sortName);
                    $scope.pluginsDict.PluginSet.sort(sortVersion);
                });
            }
        }
        function setBaseAfterLoad(){
            serviceUI.setBaseObj({obj: "default", node: $scope.dists[0]});
            serviceUI.actionBroadcast('reloadComponents');
        }
        /* *********** Main Scope Functions ************ */
        $scope.clickDist = function(dist){
            var curSelected = serviceUI.getSelectedObj();
            if (curSelected['node'] != dist) {
                if (serviceUI.setState({obj: dist.node_type, status: "newBase"})) {
                    if (typeof dist["selected"] != "undefined")
                        delete dist["selected"];
                    serviceUI.setBaseObj({obj: dist.node_type, node: dist}); // Use of JSON.parse(JSON.stringify(obj)) to copy JSON object. This object must not contain any function.
                    $scope.btnActive.release = (serviceUI.checkEditable());
                    serviceUI.setNodeObj({obj: "default", node: {}});
                    if ($scope.curBaseSelected != 0)
                        $scope.curBaseSelected["selected"] = false;
                    dist["selected"] = true;
                    $scope.curBaseSelected = dist;
                    serviceUI.actionBroadcast();
                    /*$scope.test = serviceUI.getTest();
                    console.log('1:' + JSON.stringify($scope.test));
                    console.log('1:' + JSON.stringify(serviceUI.getTest()));
                    $scope.test.j="hoho";
                    console.log('2:' + JSON.stringify($scope.test));
                    console.log('2:' + JSON.stringify(serviceUI.getTest()));
                    serviceUI.setTest("azea");
                    console.log('3:' + JSON.stringify($scope.test));
                    console.log('3:' + JSON.stringify(serviceUI.getTest()));*/
                }
            }
        };
        $scope.clickPlug = function(PluginSet){
            var node_type = PluginSet.plugin.node_type;
            var curSelected = serviceUI.getSelectedObj();
            if  (curSelected["node"] != PluginSet.plugin){
                if (serviceUI.setState({obj: node_type, status: "newBase"})) {
                    if (typeof PluginSet.plugin["dist_version"] != "undefined")
                        delete PluginSet.plugin["dist_version"];
                    serviceUI.setBaseObj({obj: node_type, node: PluginSet.plugin});
                    $scope.btnActive.release = false;
                    serviceUI.setNodeObj({obj: "default", node: {}});
                    if ($scope.curBaseSelected != 0)
                        $scope.curBaseSelected["selected"] = false;
                    PluginSet["selected"] = true;
                    $scope.curBaseSelected = PluginSet;
                    serviceUI.actionBroadcast();
                }
            }
        };
        $scope.addElement = function(type){ // type: node type to add into database
            if(serviceUI.setState({obj: type, status: 'addEdit'})){
                var element = serviceAjax.createEmptyNode(type);
                var parent = {obj: "", node: {}};
                if(type == 'plugin')
                    parent = serviceUI.getBaseObj();
                else {
                    // adding new distribution
                }
                serviceUI.setAddDelObj({obj: type, node: element, parent: JSON.parse(JSON.stringify(parent.node))});
                serviceUI.actionBroadcast();
            }
        };
        $scope.clickReleaseMod = function(){
            if(serviceUI.setState({obj: "baseRelease", state: "nextPage"})){
                var distrib = serviceUI.getBaseObj();
                distrib = distrib.node;
                serviceUI.setNotifyLog("info", "View", "Entering into Release mode. Waiting for repositories pull and for Distribution copying process ...");
                serviceAjax.checkout(distrib.version, "directories")
                    .success(function(data){
                        serviceAjax.distribCopy(distrib)
                            .success(function(data){
                                $scope.dists = [];
                                $scope.dists.push(data.distrib);
                                serviceUI.setBaseObj({obj: "default", node: $scope.dists[0]});
                                serviceUI.setNotifyLog("info", "View", "Enter ReleaseA mode. Ariane Components directories are up-to-date. Distribution SNAPSHOT was copied in database.");
                                if(serviceUI.changePage('release'))
                                    serviceUI.actionBroadcast('changePage');
                            })
                            .error(function(data){
                                $scope.btnActive.release = false;
                                serviceUI.setNotifyLog("error", "View", "Unable to enter into ReleaseA mode. Git checkout and pull done. Copying Distribution failed.\nCause: "+data.message);
                            });
                    })
                    .error(function(data){
                        serviceUI.setNotifyLog("error", "View", "Unable to enter into ReleaseA mode. Git checkout and pull failed.\nCause: "+data.message);
                    });

                $scope.btnActive.release = false;
            }
        };
        $scope.clickViewMod = function(){
            // This function should do the same as a Rollback()
            /*    if(serviceUI.setState({obj: "baseRelease", state: "nextPage"})){
                loadDistribs();
                if(serviceUI.changePage('view'))
                    serviceUI.actionBroadcast('changePage');
            }*/
        };
        function Validate(release){
            if(release == "relA"){
                if($scope.mode == "Release" && $scope.dists[0].version.indexOf("SNAPSHOT") > -1)
                {
                    $scope.warnRelA.warning = $scope.warnRelA.warningRel;
                    return;
                }
                else if($scope.mode == "DEV" && $scope.dists[0].version.indexOf("SNAPSHOT") == -1){
                    $scope.warnRelA.warning = $scope.warnRelA.warningDEV;
                    return;
                }
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    $scope.warnRelA.warning = null;
                    serviceAjax.generate($scope.cmdGen.cmd, $scope.dists[0].version)
                        .success(function(data){
                            serviceUI.setNotifyLog("info", "ReleaseA", "Generation done! ("+data.message+")");
                            serviceUI.setState({obj: "default", state: "done"});
                            if(serviceUI.changePage('release'))
                                serviceUI.actionBroadcast('changePage');
                        })
                        .error(function(data){
                            serviceUI.setState({obj: "default", state: "done"});
                            serviceUI.setNotifyLog("error", "ReleaseA", "An error occured: " + data.message);
                        });
                }
            }
            else if(release == "relB"){
                if(serviceUI.setState({obj: "release", state:"zip"})){
                    if($scope.mode == "Release")
                        callBuildZip(release, false);
                    else{
                        if(serviceUI.changePage('release'))
                            serviceUI.actionBroadcast('changePage');
                    }

                    $scope.confirmValRoll.disableVal = true;
                }
            }
            else if(release == "relC"){
                if(serviceUI.setState({obj: "release", state:"zip"})){
                    if(pageStates.relC == "commit"){
                        // GIT COMMIT TAG PUSH
                        serviceAjax.commit($scope.mode, $scope.cmdRelC.task, $scope.cmdRelC.comment)
                            .success(function(data){
                                serviceUI.setNotifyLog("info", "ReleaseC", data.message);
                                if($scope.mode == "Release"){
                                    serviceUI.setNotifyLog("info", "ReleaseC", "Now building the new zip file from tags. Waiting...");
                                    pageStates.relC = "build";
                                    callBuildZip(release, true);
                                }
                                else if($scope.mode == "DEV"){
                                    serviceUI.setPage('view');
                                    $scope.mode = "Release";
                                    serviceUI.actionBroadcast('changePage');
                                }
                            })
                            .error(function(data){
                                pageErrors.relC = "error_tag";
                                serviceUI.setNotifyLog("error", "ReleaseC", "Error while committing distribution: " + data.message);
                                serviceUI.setState({obj: "default", state: "done"});
                            });
                    }
                    else if(pageStates.relC == "build"){
                        serviceUI.setNotifyLog("info", "ReleaseC", "Now building the new zip file from tags. Waiting...");
                        callBuildZip(release, true);
                    }
                }
            }
            else if(release == "relD"){
                serviceUI.setNotifyLog("info", "ReleaseD", "Validation of the Zip file generated from tags");
                if(serviceUI.changePage('release'))
                    serviceUI.actionBroadcast('changePage');
            }
            else if(release == "relE"){
                // PLUGIN MANAGER -- TODO: IMPLEMENT PLUGIN MANAGER
                serviceUI.setNotifyLog("info", "ReleaseE", "Passing step ReleaseE (Plugin Manager) because not implemented yet");
                if(serviceUI.changePage('release'))
                    serviceUI.actionBroadcast('changePage');
                /*if(serviceUI.setState({obj: "releasePlugin", state:"selection"})){
                        /!*  Plugins compatibility with new distribution
                            Plugins selection
                            For each Selected plugins :
                                generate files -> check diff
                                build zip -> download zip -> test zip
                                Git commit/tag/push -> Next Plugin
                        *!/

                }*/
            }
            else if(release == "relDEV"){
                if(serviceUI.setState({obj: "release", state:"zip"})){
                    serviceAjax.distribManager("DEV")
                        .success(function(data){
                            $scope.dists = [];
                            $scope.dists.push(data.distrib);
                            serviceUI.setBaseObj({obj: "default", node: $scope.dists[0]});
                            if ($scope.mode == "Release")
                                serviceUI.setMode('DEV');
                            else serviceUI.setMode('Release');
                            serviceUI.actionBroadcast('changeMode');

                            serviceUI.setNotifyLog("info", "ReleaseDEV", "New DEV Distribution was created");
                            if(serviceUI.changePage('release'))
                                serviceUI.actionBroadcast('changePage');
                            serviceUI.setState({obj: "default", state: "done"});
                        })
                        .error(function(data){
                            serviceUI.setNotifyLog("error", "ReleaseDEV", "New DEV Distribution creation failed. " + data.message);
                        });
                }
            }
        }
        function Rollback(release) {
            if(release == "relD" || (release == "relC" && pageErrors.relC == "error_tag")){
                serviceAjax.checkout($scope.dists[0].version, "tags")
                    .success(function(data){
                        var mode = 'Release' + release[release.indexOf('rel')];
                        pageErrors.relC = "";
                        serviceUI.setState({obj: "default", state: "done"});
                        serviceUI.setNotifyLog("info", mode, data.message);
                        if(serviceUI.changePage('rollback'))
                            serviceUI.actionBroadcast('changePage');
                    })
                    .error(function(data){
                        var mode = 'Release' + release[release.indexOf('rel')];
                        serviceUI.setState({obj: "default", state: "done"});
                        if(serviceUI.changePage('rollback'))
                            serviceUI.actionBroadcast('changePage');
                        serviceUI.setNotifyLog("error", mode,  "An error occured: " + data.message);
                    });
            }
            if(release == "relD" || release == "relC"){
                serviceAjax.deleteZip($scope.dists[0].version)
                    .success(function(data){  // Handle multiple zip files.
                        var filename = data.zip;
                        for(var i=0, len=$scope.download.zip.length;i<len;i++){
                            if($scope.download.zip[i] == filename){
                                $scope.download.zip[i] = "";
                                break;
                            }
                        }
                        $scope.download.zip = $scope.download.zip.filter(function(e){ return e != "";});
                        serviceUI.setNotifyLog("info", "releaseC", data.message);
                    })
                    .error(function(data){serviceUI.setNotifyLog("error", "releaseC", "Error while deleting zip file" + data.message)});
            }
            if(release == "relD" || release == "relC" || release == "relB" || release == "relA"){
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    serviceAjax.checkout($scope.dists[0].version, "files")
                    .success(function(data){
                        var mode = 'Release' + release[release.indexOf('rel')];
                        serviceUI.setState({obj: "default", state: "done"});
                        serviceUI.setNotifyLog("info", mode, data.message);
                        if(serviceUI.changePage('rollback'))
                            serviceUI.actionBroadcast('changePage');
                        })
                    .error(function(data){
                        var mode = 'Release' + release[release.indexOf('rel')];
                        serviceUI.setState({obj: "default", state: "done"});
                        if(serviceUI.changePage('rollback'))
                            serviceUI.actionBroadcast('changePage');
                        serviceUI.setNotifyLog("error", mode,  "An error occured: " + data.message);
                        });
                }
            }
        }
        function callBuildZip(release, flag){
            serviceAjax.buildZip($scope.dists[0].version, flag)
                .success(function(data){
                    $scope.download.zip = [];
                    $scope.download.zip.push(data.zip);
                    if (release == "relB")
                        serviceUI.setNotifyLog("info", "ReleaseB", "Build of zip done!");
                    else if(release == "relC")
                        serviceUI.setNotifyLog("info", "ReleaseC", "Build of zip (from TAG) done!");
                    pageStates.relC = "commit";
                    serviceUI.setState({obj: "default", state: "done"});
                    $scope.confirmValRoll.disableVal = false;
                    if(serviceUI.changePage('release'))
                        serviceUI.actionBroadcast('changePage');
                })
                .error(function(data){
                    pageErrors.relC = "error_tag";
                    $scope.confirmValRoll.disableVal = false;
                    serviceUI.setState({obj: "default", state: "done"});
                    serviceUI.setNotifyLog("error", release, "An error occured while building zip: " + data.message);
                });
        }

        $scope.TestValidRelB = function(){
            $scope.download.zip.push("testzip.zip");
            serviceUI.setNotifyLog("info", "ReleaseB", "Build of zip done! ");
            serviceUI.setState({obj: "default", state: "done"});
            if(serviceUI.changePage('release'))
                serviceUI.actionBroadcast('changePage');
        };

        $scope.TestValidRelC = function(){
            if(serviceUI.setState({obj: "release", state:"zip"})){
                if(pageStates.relC == "commit"){
                    // GIT COMMIT TAG PUSH
                    serviceAjax.commit($scope.mode, $scope.cmdRelC.task, $scope.cmdRelC.comment)
                        .success(function(data){
                            serviceUI.setNotifyLog("info", "ReleaseC", data.message);
                            $scope.download.zip.push("New_testReleaseC.zip");
                            serviceUI.setState({obj: "default", state: "done"});
                            if(serviceUI.changePage('release'))
                                serviceUI.actionBroadcast('changePage');
                        })
                        .error(function(data){
                            serviceUI.setNotifyLog("error", "ReleaseC", "Error while committing distribution: " + data.message);
                            serviceUI.setState({obj: "default", state: "done"});
                        });
                }
            }
        };

        $scope.clickValidRoll = function(validRoll, release){
            $scope.confirmValRoll.validRoll = validRoll;
            $scope.confirmValRoll.release = release;
            $scope.confirmValRoll.active = true;
            if(release == "relC"){
                if ($scope.cmdRelC.comment == null || $scope.cmdRelC.task == null || $scope.cmdRelC.comment == "" || $scope.cmdRelC.task == ""){
                    $scope.cmdRelC.warn = true;
                    $scope.confirmValRoll.active = false;
                }
                else $scope.cmdRelC.warn = false;
            }
        };
        $scope.clickConfirmValidRoll = function(choice){
            if(choice == "YES"){
                if($scope.confirmValRoll.validRoll == "VALIDATE")
                    Validate($scope.confirmValRoll.release);
                else if($scope.confirmValRoll.validRoll == "ROLLBACK")
                    Rollback($scope.confirmValRoll.release);
            }
            $scope.confirmValRoll.active = false;
        };

        $scope.toggleResetDB = function(){
            $scope.btnActive.reset.showConfirm = !$scope.btnActive.reset.showConfirm;
        };
        $scope.clickResetDB = function (choice) {
            if(choice == "YES"){
                if(serviceUI.setState({obj:"reinit", status:"generation"})){
                    serviceAjax.resetDB()
                        .success(function(data){
                            loadDistribs();
                            serviceUI.setNotifyLog("info", "View", data.message);
                            serviceUI.setState({obj: "default", status: "done"});
                            $scope.btnActive.reset.active = true;
                        })
                        .error(function(data){
                            serviceUI.setState({obj: "default", status: "done"});
                            $scope.btnActive.reset.active = true;
                            serviceUI.setNotifyLog("error", "View", data.message);
                        });
                }
                $scope.btnActive.reset.active = false;
            }
            $scope.btnActive.reset.showConfirm = false;
        };
        $scope.clickRefresh = function(){
            $scope.btnActive.refresh = false;
            loadDistribs();
        };
        function toggleBtnRefresh(){
            if(!$scope.btnActive.refresh){
                serviceUI.setNotifyLog("info", "View", "Distribution list has been refreshed");
                $scope.btnActive.refresh = true;
            }
        }

        $scope.clickDownload = function(){
            $scope.confirmValRoll.disableVal = false;
        };
        /* ********************* EVENTS ********************* */
        $scope.$on('enableEdit', function(){
            $scope.enableEdit = serviceUI.getEnableEdit();
        });
        $scope.$on('activeEdit', function (){
            $scope.activeEdit = serviceUI.getActiveEdit();
        });
        $scope.$on('changeMode', function(){
            $scope.mode = serviceUI.getMode();
        });
        $scope.$on('changePage', function(){
            $scope.page = serviceUI.getPage();
            for(var i= 0, len=baseTemplates.length, flagErr=true; i<len; i++){
                if(baseTemplates[i].name == $scope.page){
                    $scope.baseTemplate = baseTemplates[i];
                    if($scope.page == "view"){ // Reload everything
                        $scope.activeEdit = false;
                        loadDistribs('setBaseAfterLoad');
                    }
                    else $scope.modeTitle.selected = $scope.modeTitle[$scope.page];
                    $scope.confirmValRoll.disableVal = false;
                    flagErr = false;
                    break;
                }
                if($scope.page == "releaseE"){
                    $scope.cmdGen = $scope.commandsRelE["Plugins_Only"];
                }
            }
            if(flagErr)
                $scope.baseTemplate = templateErr;
        });
        $scope.$on('deleteNode', function(){
            var delObj = serviceUI.getAddDelObj();
            if(delObj.obj == "plugin")
                loadPlugins();
            $scope.curNodeSelected = 0;
        });
        $scope.$on('addNode', function(){
            var addObj = serviceUI.getAddDelObj();
            if(addObj.obj == "plugin")
                loadPlugins();
        });

        /* **** Small Functions and Small Scope Functions **** */
        $scope.toggleDistList = function(){
            $scope.togDist = !$scope.togDist;
        };
        $scope.isDistToggle = function(){
            return $scope.togDist;
        };
        $scope.togglePlugList = function(){
            $scope.togPlug = !$scope.togPlug;
        };
        $scope.isPlugToggle = function(){
            return $scope.togPlug;
        };
        function sortVersion(a,b){
            return (-1) * a.version.localeCompare(b.version);
        }
        function sortName(a,b){
            return a.name.localeCompare(b.name);
        }
    });
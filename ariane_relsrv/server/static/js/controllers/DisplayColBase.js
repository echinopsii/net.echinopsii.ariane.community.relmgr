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

//define_url
angular.module('ArianeUI')
    .controller('DisplayColBaseCtrl', function ($scope, serviceAjax, serviceUI) {
        // config
        $scope.CONFIG = CONFIG;
        // data
        $scope.dists = [];
        $scope.snapshots = [];
        var plugins = [];
        $scope.pluginsDict = {Names: [], PluginSet: []};
        $scope.curBaseSelected = 0;
        // state
        $scope.enableEdit = false;
        $scope.activeEdit = false;
        $scope.page = 'view';
        $scope.mode = "Release";  // mode = "Release" | "DEV"
        $scope.pageStates = {relD: "tobuild"};
        var pageErrors = {relC: "", relD: ""};
        $scope.modeTitle = {
            selected: "",
            Release:{
                releaseA: "Release versioning : define distribution and module versions.",
                releaseB: "Release versioning check : check generated files diff.",
                releaseC: "Release pre build : download generated zip and test it.",
                releaseD: "Release final build : click validate to generate final distrib.",
                releaseE: "Manage Plugins"
            },
            DEV:{
                releaseA: "Snapshot versioning : define distribution and module versions.",
                releaseB: "Snapshot versioning check : check generated files diff.",
                releaseC: "Snapshot final validation"
            }
        };
        // templates
        var baseTemplates = [{name: 'view', url:'baseEdition.html'}, {name:'releaseA', url:'baseRelA.html'}, {name:'releaseB', url:'baseRelB.html'},
                             {name:'releaseC', url:'baseRelC.html'}, {name:'releaseD', url:'baseRelD.html'}, {name:'releaseE', url:'baseRelE.html'},
                             {name:'releaseDEV', url:'baseRelDEV.html'}];
        $scope.baseTemplate = baseTemplates[0];
        var templateErr = "err.html";
        // inputs/outputs
        $scope.confirmValRoll = {msg: "VALIDATE", confirm:false, active: false, disableVal: false};
        $scope.commandsRelA = {Core: "core_only", Plugins_Only: "plugin_only", TestOK:"testOK", TestNOK: "testNOK"};
        $scope.commandsRelE = {Plugins_Only: "plugin_only"};
        $scope.cmdRelC = {task: null, comment: null, warning: "You must fill everything", warn: false};
        $scope.cmdRelD = {choice: "ReleaseDev"};
        $scope.cmdRelDEV = {version: null, warning: "You must fill the version field", warn: false};
        $scope.cmdGen = {cmd: $scope.commandsRelA.Core};
        $scope.download = {zip: [], selected: null, click: false};
        $scope.btnActive = {release: false, dev: false, refresh: true, reset: {active: true, showConfirm: false}, export: false};
        // view variables
        $scope.warnRelA = {warning: "", warningRel: "Distribution Version MUST NOT contain '-SNAPSHOT' when releasing the new Release Distribution",
                           warningDEV: "Distribution Version MUST contain '-SNAPSHOT' when releasing the new DEV Distribution"};
        $scope.togSnap = true;
        $scope.togDist = false;
        $scope.togPlug = true;
        /* ********************* Main FUNCTIONS ********************* */
        (function init(){
            // No need to get config by Ajax for the moment, we do this using Jinja2 templates renderer;
            /*serviceAjax.distribManager("other", "getConfig")
                .success(function(data){
                    if(data.run_mode)
                        $scope.CONFIG.mode = data.run_mode;
                    if(data.relmgr_url)
			serviceAjax.define_url(data.relmgr_url);
                    if($scope.CONFIG.mode == "test")
                        $scope.btnActive.export = true;
                });*/
            if($scope.CONFIG.mode == "test")
                $scope.btnActive.export = true;
            loadSnapshots();
            loadReleases();
        })();
        function loadSnapshots(callFunction){
            serviceAjax.snapshots('').success(function(data) // Init: loading data (snapshots)
            {
                data.distribs.sort(sortVersion);
                $scope.snapshots = data.distribs;
                var len_dist = $scope.snapshots.length;
                $scope.snapshots = $scope.snapshots.filter(function(e){ return !serviceUI.isDistribCopy(e)});
                serviceUI.actionBroadcast("changeMode");
                toggleBtnRefresh();
                if (typeof callFunction !== "undefined")
                    callFunction();
            });
        }
        function loadReleases(callFunction){
            serviceAjax.releases('').success(function(data) // Init: loading data (releases)
            {
                data.distribs.sort(sortVersion);
                $scope.dists = data.distribs;
                var len_dist = $scope.dists.length;
                $scope.dists = $scope.dists.filter(function(e){ return !serviceUI.isDistribCopy(e)});
                if(len_dist != $scope.dists.length) {
                    serviceUI.setMode("DEV");
                    serviceUI.actionBroadcast("changeMode");
                    serviceUI.setNotifyLog("info","View","You are now in DEV mode");
                    $scope.btnActive.release = false;
                    $scope.btnActive.dev = true;
                }
                else{
                    serviceUI.setMode("Release");
                    serviceUI.actionBroadcast("changeMode");
                    serviceUI.setNotifyLog("info","View","You are now in Release mode");
                    $scope.btnActive.release = true;
                    $scope.btnActive.dev = false;
                }
                toggleBtnRefresh();
                if (typeof callFunction !== "undefined")
                    callFunction();
                // loadPlugins();
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
            serviceUI.setBaseObj({obj: "default", node: $scope.snapshots[0]});
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
                    if($scope.mode == "Release")
                        $scope.btnActive.release = (serviceUI.checkEditable());
                    else if($scope.mode == "DEV")
                        $scope.btnActive.dev = (serviceUI.checkEditable());
                    serviceUI.setNodeObj({obj: "default", node: {}});
                    if ($scope.curBaseSelected != 0)
                        $scope.curBaseSelected["selected"] = false;
                    dist["selected"] = true;
                    $scope.curBaseSelected = dist;
                    $scope.enableEdit = (dist.editable==="true");
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
                    $scope.btnActive.dev = false;
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
        $scope.syncLastDev = function() {
            serviceAjax.distribManager("syncFromLastDev", null)
                .success(function(data){
                    loadSnapshots();
                    serviceUI.setNotifyLog("info", "View", data.message);
                    serviceUI.setState({obj: "default", status: "done"});
                })
                .error(function(data){
                    serviceUI.setState({obj: "default", status: "done"});
                    //$scope.btnActive.reset.active = true;
                    serviceUI.setNotifyLog("error", "View", data.message);
                });
        };
        $scope.clickNewRelease = function(){
            if(serviceUI.setState({obj: "baseRelease", state: "nextPage"})){
                var distrib = serviceUI.getBaseObj();
                distrib = distrib.node;
                serviceUI.setNotifyLog("info", "View", "Entering into Release mode. Waiting for repositories pull and for Distribution copying process ...");
                serviceAjax.checkout(distrib.version, distrib.dep_type, "directories", false, false)
                    .success(function(data){
                        serviceAjax.distribManager("RELEASE", distrib)
                            .success(function(data){
                                $scope.mode = "Release";
                                $scope.snapshots = [];
                                $scope.snapshots.push(data.distrib);
                                serviceUI.setBaseObj({obj: "default", node: $scope.snapshots[0]});
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
        $scope.clickNewSnapshot = function(){
            if(serviceUI.setState({obj: "baseRelease", state: "nextPage"})){
                var distrib = serviceUI.getBaseObj();
                distrib = distrib.node;
                serviceUI.setNotifyLog("info", "View", "Creating new Snapshot from " + distrib.version + " ...");
                serviceAjax.distribManager("SNAPSHOT", distrib)
                    .success(function(data){
                        $scope.mode = "DEV";
                        $scope.snapshots = [];
                        $scope.snapshots.push(data.distrib);
                        serviceUI.setBaseObj({obj: "default", node: $scope.snapshots[0]});
                        loadSnapshots();
                        serviceUI.setNotifyLog("info", "View", "New snapshot created: you can now customize it.");
                    })
                    .error(function(data){
                        $scope.btnActive.dev = false;
                        serviceUI.setPage("view");
                        serviceUI.actionBroadcast("changePage");
                        serviceUI.setNotifyLog("error", "View", "Unable to enter into DEV Edition mode.\nCause: "+data.message);
                    });
            }
                $scope.btnActive.dev = false;
        };
        function Validate(release){
            if(release == "relA"){
                if($scope.mode == "Release" && $scope.snapshots[0].version.indexOf("SNAPSHOT") > -1)
                {
                    $scope.warnRelA.warning = $scope.warnRelA.warningRel;
                    $scope.confirmValRoll.disableVal = false;
                    return;
                }
                else if($scope.mode == "DEV" && $scope.snapshots[0].version.indexOf("SNAPSHOT") == -1){
                    $scope.warnRelA.warning = $scope.warnRelA.warningDEV;
                    $scope.confirmValRoll.disableVal = false;
                    return;
                }
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    $scope.warnRelA.warning = null;
                    serviceAjax.generate($scope.cmdGen.cmd, $scope.snapshots[0].version, $scope.snapshots[0].dep_type)
                        .success(function(data){
                            serviceUI.setNotifyLog("info", "ReleaseA", "Generation done! ("+data.message+")");
                            serviceUI.setState({obj: "default", state: "done"});
                            if(serviceUI.changePage('release'))
                                serviceUI.actionBroadcast('changePage');
                        })
                        .error(function(data){
                            $scope.confirmValRoll.disableVal = false;
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
                        serviceUI.setNotifyLog("info", "ReleaseA", "Running 'mvn clean install' ...");
                        serviceAjax.buildZip($scope.snapshots[0].version, false, "mvncleaninstall", $scope.snapshots[0].dep_type)
                            .success(function(data){
                                $scope.confirmValRoll.disableVal = false;
                                serviceUI.setNotifyLog("info", "ReleaseA", "'mvn clean install' succeeded");
                                if(serviceUI.changePage('release'))
                                    serviceUI.actionBroadcast('changePage');
                            })
                            .error(function(data){
                                $scope.confirmValRoll.disableVal = false;
                                serviceUI.setNotifyLog("error", "ReleaseA", "An error occured while running 'mvn clean install': " + data.message);
                            });
                    }
                }
            }
            else if(release == "relC"){
                if(serviceUI.setState({obj: "release", state:"zip"})){
                        // GIT COMMIT TAG PUSH
                        serviceAjax.commit($scope.mode, $scope.cmdRelC.task, $scope.cmdRelC.comment, false, false)
                            .success(function(data){
                                serviceUI.setNotifyLog("info", "ReleaseC", data.message);
                                if($scope.mode == "Release"){
                                    if(serviceUI.changePage('release'))
                                        serviceUI.actionBroadcast('changePage');
                                }
                                else if($scope.mode == "DEV"){
                                    serviceAjax.distribManager("removeDEVcopy", null)
                                        .success(function(data){
                                            $scope.mode = "Release";
                                            $scope.btnActive.export = true;
                                            serviceUI.setNotifyLog("info", "ReleaseC_DEV", "New DEV Distribution was successfully done");
                                            serviceUI.setPage('view');
                                            serviceUI.actionBroadcast('changePage');
                                        })
                                        .error(function(data){
                                            $scope.confirmValRoll.disableVal = false;
                                            serviceUI.setNotifyLog("error", "ReleaseC_DEV", "An error occured while pushing the new master\n"
                                            + ": " + data.message);
                                        });
                                }
                            })
                            .error(function(data){
                                pageErrors.relC = "error_tag";
                                $scope.confirmValRoll.disableVal = false;
                                serviceUI.setNotifyLog("error", "ReleaseC", "Error while committing distribution: " + data.message);
                                serviceUI.setState({obj: "default", state: "done"});
                            });
                }
            }
            else if(release == "relD"){
                if(serviceUI.setState({obj: "release", state:"zip"})) {
                    if($scope.pageStates.relD == "tobuild"){
                        serviceUI.setNotifyLog("info", "ReleaseD", "Now building the new zip file from tags. Waiting...");
                        $scope.confirmValRoll.disableVal = false;
                        callBuildZip(release, true);
                    }
                    else if($scope.pageStates.relD == "tovalid"){
                        if(serviceUI.setState({obj: "release", state:"zip"})){
                            serviceUI.setNotifyLog("info", "ReleaseD", "Entering in DEV mode. Waiting...");
                            if($scope.cmdRelD.choice == "ReleaseDev") {
                                serviceAjax.distribManager("DEV", null)
                                    .success(function(data){
                                        $scope.snapshots = [];
                                        $scope.snapshots.push(data.distrib);
                                        serviceUI.setBaseObj({obj: "default", node: $scope.snapshots[0]});
                                        if ($scope.mode == "Release")
                                            serviceUI.setMode('DEV');
                                        serviceUI.actionBroadcast('changeMode');
                                        serviceUI.setNotifyLog("info", "ReleaseD", "New DEV Distribution was created");
                                        serviceUI.setPage("releaseA");
                                        serviceUI.actionBroadcast("changePage");
                                        serviceUI.setState({obj: "default", state: "done"});
                                    })
                                    .error(function(data){
                                        $scope.confirmValRoll.disableVal = false;
                                        serviceUI.setNotifyLog("error", "ReleaseDEV", "New DEV Distribution creation failed. " + data.message);
                                    });
                            }
                            else{ // choice == "ReleaseOnly"
                                $scope.btnActive.export = true;
                                serviceUI.setPage("view");
                                serviceUI.actionBroadcast("changePage");
                                serviceUI.setNotifyLog("info", "ReleaseD", "Release process is over. Returns to main page");
                                serviceUI.setState({obj: "default", state: "done"});
                            }
                        }
                    }
                    // *** The following commented code is used to commit the 'distrib' module,
                        // We want to use this functionality independently.
                        /*serviceAjax.commit($scope.mode, true, $scope.cmdRelC.task, $scope.cmdRelC.comment)
                            .success(function(data){
                                serviceUI.setNotifyLog("info", "ReleaseD", data.message);*/
                                //$scope.pageStates.relD = "build";
                        //})
                            /*.error(function(data){
                                pageErrors.relD = "error_tag_distrib";
                                serviceUI.setNotifyLog("error", "ReleaseD", "Error while committing the 'distrib' Distribution module: " + data.message);
                                serviceUI.setState({obj: "default", state: "done"});
                            });*/
                }
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
        }
        function Rollback(release) {
            if(($scope.mode == "Release")&&(release == "relD" || (release == "relC" && pageErrors.relC == "error_tag"))){
                var isdistrib = false;
                serviceAjax.checkout($scope.snapshots[0].version, $scope.snapshots[0].dep_type, "tags", isdistrib, false)
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
                        $scope.confirmValRoll.disableVal = false;
                        if(serviceUI.changePage('rollback'))
                            serviceUI.actionBroadcast('changePage');
                        serviceUI.setNotifyLog("error", mode,  "An error occured: " + data.message);
                    });
            }
            if(($scope.mode == "Release") && (release == "relD" && $scope.pageStates.relD != "tobuild")){
                serviceAjax.deleteZip($scope.snapshots[0].version)
                    .success(function(data){  // Handle multiple zip files.
                        var filename = data.zip;
                        $scope.confirmValRoll.disableVal = false;
                        for(var i=0, len=$scope.download.zip.length;i<len;i++){
                            if($scope.download.zip[i] == filename){
                                $scope.download.zip[i] = "";
                                break;
                            }
                        }
                        $scope.download.zip = $scope.download.zip.filter(function(e){ return e != "";});
                        serviceUI.setNotifyLog("info", "releaseC", data.message);
                    })
                    .error(function(data){
                        $scope.confirmValRoll.disableVal = false;
                        serviceUI.setNotifyLog("error", "releaseC", "Error while deleting zip file" + data.message)
                    });
            }
            $scope.pageStates.relD = "tobuild";
            if(release == "relD" || release == "relC" || release == "relB" || release == "relA"){
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    if($scope.mode == "Release"){
                        serviceAjax.checkout($scope.snapshots[0].version, $scope.snapshots[0].dep_type, "files", false, false)
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
                    } else if($scope.mode == "DEV") {
                        serviceAjax.checkout($scope.snapshots[0].version, $scope.snapshots[0].dep_type, "files_DEV", false, false)
                            .success(function(data){
                                var mode = 'DEV' + release[release.indexOf('rel')];
                                serviceUI.setState({obj: "default", state: "done"});
                                serviceUI.setNotifyLog("info", mode, data.message);
                                if(serviceUI.changePage('rollback'))
                                    serviceUI.actionBroadcast('changePage');
                            })
                            .error(function(data){
                                var mode = 'DEV' + release[release.indexOf('rel')];
                                serviceUI.setState({obj: "default", state: "done"});
                                if(serviceUI.changePage('rollback'))
                                    serviceUI.actionBroadcast('changePage');
                                serviceUI.setNotifyLog("error", mode,  "An error occured: " + data.message);
                            });
                    }
                }
            }
        }
        function callBuildZip(release, flag){
            serviceAjax.buildZip($scope.snapshots[0].version, flag, "buildzip", $scope.snapshots[0].dep_type)
                .success(function(data){
                    $scope.download.zip = [];
                    $scope.download.zip.push(data.zip);
                    if (release == "relB")
                        serviceUI.setNotifyLog("info", "ReleaseB", "Build of zip done!");
                    serviceUI.setState({obj: "default", state: "done"});
                    $scope.confirmValRoll.disableVal = false;
                    if (release != "relD"){
                        if(serviceUI.changePage('release'))
                            serviceUI.actionBroadcast('changePage');
                    }
                    else {
                        serviceUI.setNotifyLog("info", "ReleaseD", "Build of zip (from TAG) done!");
                        $scope.pageStates.relD = "tovalid";
                    }
                })
                .error(function(data){
                    pageErrors.relD = "error_build_from_tags";
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
                if($scope.mode == "Release"){
                    serviceUI.setNotifyLog("info", "ReleaseC", "FOR TEST: Git tag push validated");
                    $scope.download.zip.push("New_testReleaseC.zip");
                    serviceUI.setState({obj: "default", state: "done"});
                    $scope.pageStates.relD = "tovalid";
                    if(serviceUI.changePage('release'))
                        serviceUI.actionBroadcast('changePage');
                }
                else{
                    serviceUI.setNotifyLog("info", "ReleaseC", "Now removing the copy before entering in Release mode");
                    serviceAjax.distribManager("removeDEVcopy", null)
                        .success(function(data){
                            $scope.mode = "Release";
                            serviceUI.setNotifyLog("info", "ReleaseC_DEV", "New DEV Distribution was successfully done");
                            serviceUI.setPage('view');
                            serviceUI.actionBroadcast('changePage');
                        })
                        .error(function(data){
                            serviceUI.setNotifyLog("error", "ReleaseC_DEV", "An unexpected error occured");
                            serviceUI.setPage('view');
                            serviceUI.actionBroadcast('changePage');
                        });
                }
            }
        };

        $scope.clickValidRoll = function(validRoll, release){
            $scope.confirmValRoll.validRoll = validRoll;
            $scope.confirmValRoll.release = release;
            $scope.confirmValRoll.active = true;
            if(release == "relC" && $scope.mode == "Release" && validRoll == "VALIDATE"){
                if ($scope.cmdRelC.comment == null || $scope.cmdRelC.task == null || $scope.cmdRelC.comment == "" || $scope.cmdRelC.task == ""){
                    $scope.cmdRelC.warn = true;
                    $scope.confirmValRoll.active = false;
                }
                else $scope.cmdRelC.warn = false;
            }
        };
        $scope.clickConfirmValidRoll = function(choice){
            if(choice == "YES"){
                $scope.confirmValRoll.disableVal = true;
                if($scope.confirmValRoll.validRoll == "VALIDATE")
                    Validate($scope.confirmValRoll.release);
                else if($scope.confirmValRoll.validRoll == "ROLLBACK")
                    Rollback($scope.confirmValRoll.release);
            }
            $scope.confirmValRoll.active = false;
        };

        $scope.setCmdD = function (cmd) {
            $scope.cmdRelD.choice = cmd;
        };

        $scope.toggleResetDB = function(){
            $scope.btnActive.reset.showConfirm = !$scope.btnActive.reset.showConfirm;
        };
        $scope.clickResetDB = function (choice) {
            if(choice == "YES"){
                if(serviceUI.setState({obj:"reinit", status:"generation"})){
                    serviceAjax.resetDB()
                        .success(function(data){
                            loadSnapshots();
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
        $scope.clickExport = function(){
            $scope.btnActive.export = false;
            serviceAjax.distribManager("exportDB", null).
                success(function(data){
                   serviceUI.setNotifyLog("info", "View", "New database file was correctly exported to the server")
                })
                .error(function(data){
                    $scope.btnActive.export = true;
                    serviceUI.setNotifyLog("error", "View", "An error occured while exporting the new database file to the server");
                });
        };

        $scope.clickRefresh = function(){
            $scope.btnActive.refresh = false;
            loadSnapshots();
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
                        loadSnapshots(setBaseAfterLoad);
                    }
                    else $scope.modeTitle.selected = $scope.modeTitle[$scope.mode][$scope.page];
                    flagErr = false;
                    break;
                }
                if($scope.page == "releaseE"){
                    $scope.cmdGen = $scope.commandsRelE["Plugins_Only"];
                }
            }
            $scope.confirmValRoll.disableVal = false;
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
        $scope.toggleSnapList = function(){
            $scope.togSnap = !$scope.togSnap;
        };
        $scope.toggleDistList = function(){
            $scope.togDist = !$scope.togDist;
        };
        $scope.isSnapToggle = function(){
            return $scope.togSnap;
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

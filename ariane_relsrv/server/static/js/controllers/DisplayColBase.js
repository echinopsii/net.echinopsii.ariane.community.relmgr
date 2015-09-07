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
        $scope.page = 'edition';
        // templates
        var baseTemplates = [{name: 'edition', url:'baseEdition.html'}, {name:'releaseA', url:'baseRelA.html'}, {name:'releaseB', url:'baseRelB.html'}];
        $scope.baseTemplate = baseTemplates[0];
        var templateErr = "err.html";
        // inputs/outputs
        $scope.confirmValRoll = {msg: "VALIDATE", confirm:false, active: false};
        $scope.commandsRelA = {Distribution: "distribution", Modules_Only: "module_only", Plugins_Only: "plugin_only", TestOK:"testOK", TestNOK: "testNOK"};
        $scope.cmdGen = {cmd: $scope.commandsRelA["Modules_Only"]};
        $scope.download = {zip: [], selected: null};
        // log
        $scope.info = {edition: {msg: "", exists: false}, release: {msg: "", exists: false}};
        $scope.error = {edition: {msg: "", exists: false}, release: {msg: "", exists: false}};
        // view variables
        $scope.togDist = true;
        $scope.togPlug = true;
        /* ********************* Main FUNCTIONS ********************* */
        (function init(){
            loadDistribs();
        })();
        function loadDistribs(filter){
            serviceAjax.distrib('').success(function(data) // Init: loading data (distributions ans plugins)
            {
                data.distribs.sort(sortVersion);
                $scope.dists = data.distribs;
                loadPlugins();
                if (typeof filter !== "undefined")
                    filter();
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
        function keepSNAPSHOT(){
            $scope.dists = $scope.dists.filter(function(d){ return d.version.indexOf("SNAPSHOT") > -1 || d.snapshot});
            console.assert($scope.dists.length == 1, "Multiple SNAPSHOT Distribution versions");
            $scope.dists[0].selected = false;
            serviceUI.setBaseObj({obj: "default", node: $scope.dists[0]});
        }
        /* *********** Main Scope Functions ************ */
        $scope.clickDist = function(dist){
            var curSelected = serviceUI.getSelectedObj();
            if (curSelected['node'] != dist) {
                if (serviceUI.setState({obj: dist.node_type, status: "newBase"})) {
                    if (typeof dist["selected"] != "undefined")
                        delete dist["selected"];
                    serviceUI.setBaseObj({obj: dist.node_type, node: dist}); // Use of JSON.parse(JSON.stringify(obj)) to copy JSON object. This object must not contain any function.
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
                loadDistribs(keepSNAPSHOT);
                if(serviceUI.changePage('release'))
                    serviceUI.actionBroadcast('changePage');
            }
        };
        $scope.clickEditionMod = function(){
            if(serviceUI.setState({obj: "baseRelease", state: "nextPage"})){
                loadDistribs();
                if(serviceUI.changePage('edition'))
                    serviceUI.actionBroadcast('changePage');
            }
        };
        function Validate(release){
            if(release == "relA"){
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    serviceAjax.generate($scope.cmdGen.cmd, $scope.dists[0].version)
                        .success(function(data){
                            logInfo("Generation done! ("+data.message+")");
                            serviceUI.setState({obj: "default", state: "done"});
                            if(serviceUI.changePage('release'))
                                serviceUI.actionBroadcast('changePage');
                        })
                        .error(function(data){
                            logError("An error occured: " + data.message);
                            serviceUI.setState({obj: "default", state: "done"});
                        });
                }
            }
            else if(release == "relB"){
                if(serviceUI.setState({obj: "release", state:"zip"})){
                    serviceAjax.buildZip($scope.dists[0].version)
                    .success(function(data){
                        $scope.download.zip.push(data.zip);
                        logInfo("Build of zip done! ");
                        serviceUI.setState({obj: "default", state: "done"});
                        //if(serviceUI.changePage('release'))
                        //  serviceUI.actionBroadcast('changePage');
                    })
                    .error(function(data){
                        logError("An error occured: " + data.message);
                        serviceUI.setState({obj: "default", state: "done"});
                    });
                }
            }
        }
        function Rollback(release) {
            if(release == "relB"){
                if(serviceUI.setState({obj: "release", state:"generation"})){
                    serviceAjax.checkout($scope.dists[0].version)
                    .success(function(data){
                        logInfo(data.message);
                        serviceUI.setState({obj: "default", state: "done"});
                        })
                    .error(function(data){
                        logError("An error occured: " + data.message);
                        serviceUI.setState({obj: "default", state: "done"});
                    });
                    if(serviceUI.changePage('rollback'))
                        serviceUI.actionBroadcast('changePage');
                }
            }
        }

        $scope.clickValidRoll = function(validRoll, release){
            $scope.confirmValRoll.validRoll = validRoll;
            $scope.confirmValRoll.release = release;
            $scope.confirmValRoll.active = true;
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
            $scope.confirmValRoll.active = !$scope.confirmValRoll.active;
        };
        $scope.clickResetDB = function (choice) {
            if(choice == "YES"){
                if(serviceUI.setState({obj:"reinit", status:"generation"})){
                    serviceAjax.resetDB()
                        .success(function(data){
                            loadDistribs();
                            logInfo(data.message);
                            serviceUI.setState({obj: "default", status: "done"});
                        })
                        .error(function(data){
                            logError(data.message);
                            serviceUI.setState({obj: "default", status: "done"});
                        });
                }
            }
            $scope.confirmValRoll.active = false;
        };
        /* ********************* EVENTS ********************* */
        $scope.$on('enableEdit', function(){
            $scope.enableEdit = serviceUI.getEnableEdit();
        });
        $scope.$on('activeEdit', function (){
            $scope.activeEdit = serviceUI.getActiveEdit();
        });
        $scope.$on('changePage', function(){
            $scope.page = serviceUI.getPage();
            for(var i= 0, len=baseTemplates.length, flagErr=true; i<len; i++){
                if(baseTemplates[i].name == $scope.page){
                    $scope.baseTemplate = baseTemplates[i];
                    if($scope.page == "edition"){ // Reload everything
                        $scope.activeEdit = false;
                        loadDistribs();
                    }
                    flagErr = false;
                    break;
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

        function logInfo(msg){
            $scope.info.release.msg = msg;
            $scope.info.release.exists = true;
            console.log(msg);
        }
        function logError(msg){
            $scope.error.release.msg = msg;
            $scope.error.release.exists = true;
            console.warn(msg);
        }
        function sortVersion(a,b){
            return (-1) * a.version.localeCompare(b.version);
        }
        function sortName(a,b){
            return a.name.localeCompare(b.name);
        }
    });
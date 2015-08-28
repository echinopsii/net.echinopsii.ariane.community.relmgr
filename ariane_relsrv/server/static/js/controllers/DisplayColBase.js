/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColBaseCtrl', function ($scope, serviceAjax, serviceUI) {
        $scope.dists = [];
        var plugins = [];
        $scope.pluginsDict = {Names: [], PluginSet: []};
        $scope.curBaseSelected = 0;
        $scope.togDist = true;
        $scope.togPlug = true;
        $scope.activeEdit = false;
        $scope.enableAddDel = false;
        serviceAjax.distrib('').success(function(data) // Init: loading data (distributions ans plugins)
        {
            data.distribs.sort(sortVersion);
            $scope.dists = data.distribs;

            var dlen = $scope.dists.length;
            for (var i=0; i < dlen; i++) {
                var d = $scope.dists[i];
                serviceAjax.plugin(d.version).success(function(data){
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
                            pvlen = $scope.pluginsDict.PluginSet.length;
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
        }); // end init

        $scope.clickDist = function(dist){
            var curSelected = serviceUI.getSelectedObj();
            if (curSelected['node'] != dist) {
                if (serviceUI.setState({obj: dist.node_type, status: "newBase"})) {
                    if (typeof dist["selected"] != "undefined")
                        delete dist["selected"];
                    serviceUI.setBaseObj({obj: dist.node_type, node: dist}); // Use of JSON.parse(JSON.stringify(obj)) to copy JSON object. This object must not contain any function.
                    serviceUI.setNodeObj({obj: "default", node: {}});
                    $scope.enableAddDel = serviceUI.checkEditable();
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
                    $scope.enableAddDel = false;
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

        $scope.$on('activeEdit', function (){
            $scope.activeEdit = serviceUI.getActiveEdit();
        });

        $scope.clickDistRoot = function(){
        };

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
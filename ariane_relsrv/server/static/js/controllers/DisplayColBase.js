/**
 * Created by stanrenia on 14/08/15.
 */
angular.module('ArianeUI')
    .controller('DisplayColBaseCtrl', function ($scope, serviceAjax) {
        $scope.dists = [];
        var plugins = [];
        $scope.pluginsDict = {Names: [], PluginSet: []};
        $scope.curSelected = 0;
        $scope.togDist = true;
        $scope.togPlug = true;
        serviceAjax.distrib('').success(function(data)
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
                            $scope.pluginsDict.PluginSet.push({"name": p.name, "version": p.version, "style": "none","plugin": p});
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
                                $scope.pluginsDict.PluginSet.push({"name": p.name, "version": p.version, "style": "none","plugin": p});
                            }
                        }
                    }
                    $scope.pluginsDict.Names.sort(sortName);
                    $scope.pluginsDict.PluginSet.sort(sortVersion);
                });
            }
        });

        $scope.clickDist = function(dist){
            var baseObj = serviceAjax.getBaseObj();
            if ((baseObj["obj"] != "dist")
                ||((baseObj["obj"] == "dist") && (baseObj["node"] != dist))) {
                if (serviceAjax.setState({obj: "dist", status: "new"})) {
                    if (typeof dist["style"] != "undefined")
                        delete dist["style"];
                    serviceAjax.setBaseObj({obj: 'dist', node: dist}); // Use of JSON.parse(JSON.stringify(obj)) to copy JSON object. This object must not contain any function.
                    serviceAjax.setNodeObj({obj: "default", node: {}});
                    if ($scope.curSelected != 0)
                        $scope.curSelected["style"] = "none";
                    dist["style"] = "selected";
                    $scope.curSelected = dist;
                    /*$scope.test = serviceAjax.getTest();
                    console.log('1:' + JSON.stringify($scope.test));
                    console.log('1:' + JSON.stringify(serviceAjax.getTest()));
                    $scope.test.j="hoho";
                    console.log('2:' + JSON.stringify($scope.test));
                    console.log('2:' + JSON.stringify(serviceAjax.getTest()));
                    serviceAjax.setTest("azea");
                    console.log('3:' + JSON.stringify($scope.test));
                    console.log('3:' + JSON.stringify(serviceAjax.getTest()));*/
                }
            }
        };
        $scope.clickPlug = function(PluginSet){
            var baseObj = serviceAjax.getBaseObj();
            if  ((baseObj["obj"] != "plug")
                ||((baseObj["obj"] == "plug") && (baseObj["node"] != PluginSet.plugin))) {
                if (serviceAjax.setState({obj: "plug", status: "new"})) {
                    if (typeof PluginSet.plugin["dist_version"] != "undefined")
                        delete PluginSet.plugin["dist_version"];
                    serviceAjax.setBaseObj({obj: 'plug', node: PluginSet.plugin});
                    serviceAjax.setNodeObj({obj: "default", node: {}});
                    if ($scope.curSelected != 0)
                        $scope.curSelected["style"] = "none";
                    PluginSet["style"] = "selected";
                    $scope.curSelected = PluginSet;
                }
            }
        };

        $scope.toggleDistList = function(){
            $scope.togDist = !$scope.togDist;
            /*if ($scope.togDist == false){
                serviceAjax.setState({obj: "default", status: "none"});
                serviceAjax.setNodeObj({obj: "default", value: {}});
            }*/
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
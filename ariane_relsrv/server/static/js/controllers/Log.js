/**
 * Created by stanrenia on 07/09/15.
 */
angular.module('ArianeUI')
    .controller('LogCtrl', function ($scope, serviceUI) {
        $scope.log = {list: [{type: "", message: "", mode: "", status: "", show: false}]};
        $scope.$on('updateLog', function(){
            var log = serviceUI.getLog();
            LogInfoError(log);
        });

        function LogInfoError(log){
            var status = "";
            $scope.log.list.push({type: log.type, message: log.message, mode: log.mode, status: status, show: true});
            if(log.type == "info")
                console.log(log.message);
            else
                console.warn(log.message)
        }
    });
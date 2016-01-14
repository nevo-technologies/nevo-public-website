(function() {
    'use strict';
    angular.module('app', [
        'ui.bootstrap'
    ]);

    angular
        .module('app')
        .controller('controller', controller);

    controller.$inject = [
        '$scope', '$filter', '$uibModal', '$window'];

    function controller($scope, $filter, $uibModal, $window) {

        $scope.nowYear = $filter('date')(new Date(),'yyyy');

        $scope.openTeamModal = function (name) {
            $uibModal.open({
                animation: true,
                templateUrl: 'templates/modal.html',
                windowClass: 'modal-window',
                controller: function ($scope, $uibModalInstance) {
                    $scope.closeTeamModal = function () {
                        $uibModalInstance.dismiss('close');
                    };
                }
            });
        };

        $scope.isSmallDevice = function() {
            var widthThr = 320;
            return $window.innerWidth <= widthThr;
        }

        $scope.isMediumDevice = function() {
            var widthThr = 480;
            return $window.innerWidth <= widthThr;
        }
    }

})();
computerControllers.controller("ComputersCtrl", ['$scope', '$resource',
    function($scope, $resource) {
      var Computer = $resource('/computers/:computerId', {computerId: "@id", format: 'json'} );

      Computer.query(function(response) {
        $scope.computers = response;
      });
      //$scope.computers = ['adsfasd', 'adsfdsa'];
    }
]);

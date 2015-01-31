computerControllers.controller("ComputersCtrl", ['$scope', '$location', '$resource',
    function($scope, $location, $resource) {
      var Computer = $resource('/computers/:computerId', {computerId: "@id", format: 'json'},
        {
          'save': {method:'GET'}
        });

      var ToggleStatus = $resource('/computers/:computerId/toggle_status', {computerId:"@id"});

      $scope.orderProp = 'id';

      Computer.query(function(response) {
        $scope.computers = response;
      });


      $scope.toggleStatus = function(computerId) {
        ToggleStatus.get({computerId:computerId}, function() {
          Computer.query(function(response) {
            $scope.computers = response;
          });
        });
      }

      $scope.classPick = function(computerStatus) {
        if(computerStatus === 0) {
          return "loc-green";
        } else if(computerStatus ===1) {
          return "loc-red";
        } else {
          return "loc-yellow";
        }
      }
    }
]);

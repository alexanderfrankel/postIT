var postit = angular.module('postitapp', [
  'templates',
  'ngRoute',
  'controllers'
]);

postit.config(['$routeProvider',
    function($routeProvider) {
      $routeProvider.
        when('/', {
          templateUrl: "index.html",
          controller: 'ComputersCtrl'
        });
    }]);

var computerControllers = angular.module('controllers', []);

tacly = tacly or {}

tacly.ticTacToeApp = angular.module "ticTacToeApp",[]

tacly.TictactoeController = ($scope) ->
  $scope.board = board
  $scope.tiles = []
var app = angular.module("app",[])
.controller("formCtrl", function($scope, $http) {
	
	$scope.getBrands = function() {
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "brand"
			}
		};
		var request = $http(config).then(function (response){
			$scope.brands = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getModels = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "model",
				"Brand_ID" : $scope.Brand_ID
			}
		};
		var request = $http(config).then(function (response){
			$scope.models = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getModifProduced = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "prod_from_to",
				"Model_ID" : $scope.Model_ID
			}
		};
		var request = $http(config).then(function (response){
			$scope.modifProduced = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getDoors = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "door",
				"Model_ID" : $scope.Model_ID,
				"Produce_From_To" : $scope.Modif_Produced
			}
		};
		var request = $http(config).then(function (response){
			$scope.modifDoors = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getFuels = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "fuel",
				"Model_ID" : $scope.Model_ID,
				"Produce_From_To" : $scope.Modif_Produced,
				"NumOfDoors" : $scope.Modif_Door
			}
		};
		var request = $http(config).then(function (response){
			$scope.modifFuels = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getVolume = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "volume",
				"Model_ID" : $scope.Model_ID,
				"Produce_From_To" : $scope.Modif_Produced,
				"NumOfDoors" : $scope.Modif_Door,
				"EngineFuel" : $scope.Modif_Fuel
			}
		};
		var request = $http(config).then(function (response){
			$scope.modifVolume = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	$scope.getPower = function(){
		var config = {
			method : "POST",
			url : "request_cascade.php",
			data : {
				"param" : "power",
				"Model_ID" : $scope.Model_ID,
				"Produce_From_To" : $scope.Modif_Produced,
				"NumOfDoors" : $scope.Modif_Door,
				"EngineFuel" : $scope.Modif_Fuel,
				"EngineVolume" : $scope.Modif_Volume
			}
		};
		var request = $http(config).then(function (response){
			$scope.modifPower = {
				options : response.data
			};
		}, function (error){
			alert(error.data);
		});
	}
	
	angular.element(document).ready(function(){
		$scope.getBrands();
	});
	
	$scope.showAbbr = function(){
		$scope.result = "Your vehicle abbreviation is: "+$scope.Modif_Power;
	}
});


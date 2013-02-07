
angular.module('SymptomSets', ['$strap.directives']);

this.SymptomSets = function($scope) {
  $scope.symptoms = [
    {name: 'cough',present: false},
    {name: 'fever',present: false},
    {name: 'prouctive cough',present: false},
    {name: 'headache',present: false}, 
    { name: 'runny nose',present: false},
    {name: 'fatigue',present: false},
    {name: 'sore throat',present: false}];
  
  $scope.userSymptoms = [];
  
  $scope.emptySymptoms = [];
  
  $scope.clearSymptoms = function() {
    return $scope.userSymptoms = angular.copy($scope.emptySymptoms);
  };
  return $scope.finalizeSymptoms = function() {
    return angular.forEach($scope.symptoms, function(symptom) {
      if (symptom.present === true) {
        return $scope.userSymptoms.push(symptom);
      }
    });
  };
};
var STUDENTS = (function() {
	
	var contextPath = $("#contextPath").text();
	
    var scope = {};
    
    scope.idRemove = 0;
    
    scope.studentsList = function() {
		
	};
	
	scope.confirmeRemoveStudent = function(id_student) {
		if (id_student){
			scope.idRemove = id_student;
			$("#modalConfirmDelete").modal('show');
		}
	};
	
	scope.init = function (){
		scope.initEvents();
	};
	
	scope.initEvents = function(){
		
		$( "#confirmRemove" ).click(function() {
			
			var formData = "id=" + scope.idRemove;
			
			$.ajax({
				type: "POST",
				dataType: "json",
				url: contextPath + "remove",
				data: formData
			}).always(function(){
				$("#modalConfirmDelete").modal('hide');
				window.location.href = $("#contextPath").text();
			});
		});
		
	};
 
    return {
        init: scope.init,
        confirmeRemoveStudent: scope.confirmeRemoveStudent
    };
})();
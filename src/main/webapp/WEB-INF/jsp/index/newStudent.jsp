<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>

<html>

	<head>
	
		<script type="text/javascript">	
			
			$(document).ready(function($) {
				$('.description').summernote({
					lang: 'pt-BR',
					placeholder: 'Type description here..'		
				});
				
				$(".datetimepicker").datetimepicker({
					format:'d/m/Y'
				});	
			
			});
		
		</script>
		
	</head>
	
	<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<a href="${pageContext.request.contextPath}/">
				<i class="fa fa-home fa-2x" aria-hidden="true"></i> 
			</a>
			&nbsp; Add new student
		</div>
		<div class="panel-body">
		
			<form action="${pageContext.request.contextPath}/save" method="post">
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" id="name" class="form-control" required="required" name="student.name" placeholder="Name">
				</div>
				<div class="form-group">
					<label for="email">E-mail</label>
					<input type="email" id="email" class="form-control" required="required" name="student.email" placeholder="E-mail">
				</div>
				<div class="form-group">
					<label for="birthday">Birthday</label>
					<input type="text" class="form-control datetimepicker" id="birthday" required="required" name="student.birthday" placeholder="Birthday">
				</div>
				<div class="form-group">
					<label for="email" style="margin-right: 10px;">Gender</label>
					<label class="radio-inline">
					  	<input type="radio" id="gender" name="student.gender" value="M" checked="checked"> Male
					</label>
					<label class="radio-inline">
					  	<input type="radio" id="gender" name="student.gender" value="F"> Female
					</label>
				</div>
				<div class="form-group">
					<textarea name="student.description" class="form-control description" rows="4"></textarea>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" name="student.enabled" checked="checked"> Enabled
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Save</button>
			</form>
		</div>
	</div>

		
	
	</body>
	
</html>
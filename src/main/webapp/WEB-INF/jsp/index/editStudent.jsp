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
			&nbsp; Edit student (#${student.id})
		</div>
		<div class="panel-body">
		
			<form action="${pageContext.request.contextPath}/update" method="post">
			
				<input type="hidden" value="${student.id}" name="student.id">
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" id="name" class="form-control" value="${student.name}" required="required" name="student.name" placeholder="Name">
				</div>
				<div class="form-group">
					<label for="email">E-mail</label>
					<input type="email" id="email" class="form-control" value="${student.email}" required="required" name="student.email" placeholder="E-mail">
				</div>
				<div class="form-group">
					<label for="birthday">Birthday</label>
					<input type="text" class="form-control datetimepicker" id="birthday" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${student.birthday}"/>" required="required" name="student.birthday" placeholder="Birthday">
				</div>
				<div class="form-group">
					<label for="email" style="margin-right: 10px;">Gender</label>
					<label class="radio-inline">
					  	<input type="radio" id="gender" name="student.gender" value="M" ${student.gender eq 'M' ? 'checked' : '' }> Male
					</label>
					<label class="radio-inline">
					  	<input type="radio" id="gender" name="student.gender" value="F" ${student.gender eq 'F' ? 'checked' : '' }> Female
					</label>
				</div>
				<div class="form-group">
					<textarea name="student.description" class="form-control description" rows="4">
						${student.description}
					</textarea>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" name="student.enabled" ${student.enabled eq true ? 'checked' : '' }> Enabled
					</label>
				</div>
				<button type="submit" class="btn btn-primary">Save</button>
			</form>
		</div>
	</div>

		
	
	</body>
	
</html>
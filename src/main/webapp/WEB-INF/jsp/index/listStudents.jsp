<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>

<html>

	<head>
	
		<script type="text/javascript">
			
			$(document).ready(function($) {
				
				STUDENTS.init();
				
			});
		
		</script>
		
	</head>
	
	<body>
		<div id="contextPath" class="hidden">
			${pageContext.request.contextPath}
		</div>

	<div class="panel panel-default">
		<div class="panel-heading">
			Students List
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#ID</th>
						<th>Name</th>
						<th>E-mail</th>
						<th>Gender</th>
						<th>BirthDay</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody>					
					<c:forEach items="${students}" var="student">
						<tr>
							<td>${student.id}</td>
							<td>${student.name}</td>
							<td>${student.email}</td>
							<td>${student.gender.description}</td>
							<td><fmt:formatDate pattern="dd/MM/yyyy" value="${student.birthday}" /></td>
							<td>
								<a href="${pageContext.request.contextPath}/edit/${student.id}">
									<i class="fa fa-pencil-square fa-2x" title="Edit"></i>
								</a>
								&nbsp;
								<a href="javascript:STUDENTS.confirmeRemoveStudent(${student.id})">
									<i class="fa fa-trash-o fa-2x" aria-hidden="true"></i>
								</a>
							</td>
						</tr>
					</c:forEach>

					<div id="modalConfirmDelete" class="modal fade" tabindex="-1" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">Confirmation</h4>
								</div>
								<div class="modal-body">
									<p>Confirm delete student?</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" id="confirmRemove" class="btn btn-primary">Confirm</button>
								</div>
							</div>
						</div>
					</div>

				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<a href="${pageContext.request.contextPath}/newStudent" class="btn btn-primary">
								Add New <i class="fa fa-plus-circle" aria-hidden="true"></i>
							</a>
						</td>
					</tr>
				</tfoot>
			</table>		
		</div>
	</div>

		
	
	</body>
	
</html>
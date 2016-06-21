<!DOCTYPE html>
<%@ page pageEncoding="ISO-8859-1" %>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
	
<html lang="pt-BR">

	<head>
		<title><decorator:title>Apisys Scholar</decorator:title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		
		<meta name="author" content="Altair Aquino">
        
        <!-- Set the viewport width to device width for mobile -->
        <meta name="viewport" content="width=device-width" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/jquery.datetimepicker.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/template/summernote/summernote.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/template/font-awesome-4.6.3/css/font-awesome.min.css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/student.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/summernote/summernote.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/template/js/jquery.datetimepicker.full.js"></script>
		
		<decorator:head />
		
		<style type="text/css">			
			body {
				padding: 15px;
			}
		</style>
		
	</head>

	<body>
	
		<decorator:body />		
		
	</body>
	
</html>
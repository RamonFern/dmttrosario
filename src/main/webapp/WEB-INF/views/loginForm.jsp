<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DMTT - Rosário - MA</title>
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath }/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css">

<style type="text/css">
	body {
	
	padding: 60px 0px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/cabacalho.jsp" %>
	
<div class="container">
<h1>Login do Departamento Municipal de Trânsito </h1>

<form:form servletRelativeAction="/login" method="POST" >
	<div class="form-group">
		<label>E-mail</label>
		<input name="username" type="text" class="form-control"/>
	</div>
	<div class="form-group">
		<label>Senha</label>
		<input name="password" type="password" class="form-control"/>
	</div>
	<button type="submit" class="btn btn-primary">LOGAR</button>
</form:form>
</div>
</body>
</html>
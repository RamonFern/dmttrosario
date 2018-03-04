<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<%@ include file="/WEB-INF/views/cabacalho.jsp" %>


<div class="container">
<h1 align="center">Departamento de Trânsito de Rosário</h1>
<ul class="clearfix book-collection">
<div class="row">
<c:forEach items="${veiculos }" var="veiculo">

	<div class="col-xs-6 col-md-4">
		<li>
			<a href="${s:mvcUrl('VC#detalhe').arg(0,veiculo.id).build() }" class="block clearfix">
				<h2 class="product-title">${veiculo.placa }</h2>
				<img width="143" height="202"  src="">
				
				<small class="buy-button">Veja detalhes..</small>		
			</a>
		</li>
	</div>
</c:forEach>
</div>
</ul>
</div>   

<%@ include file="/WEB-INF/views/rodape.jsp" %>


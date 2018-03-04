<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>



<%@ include file="/WEB-INF/views/cabacalho.jsp" %>

<h1 align="center">Lista de Veículos</h1>

<div class="container">



<br>
<div>${sucesso }</div>
<input type="text" value="" id="txtBusca" />
<table class="table table-bordered table-hover table-striped">
  <thead>
		<tr>
			<th>Placa</th>
			<th>Marca/Modelo</th>
			<th>Espécie</th>
			<th>Motivo de Apreeção</th>
			<th>Número</th>
			<th>Data de Apreenção</th>
			<th>Liberar Veículo</th>
			<th>Descrição</th>
		</tr>
  </thead>	
	<c:forEach items="${veiculos }" var="veiculo">
	<tbody> 
		<tr>
			<td>
				<a href="${s:mvcUrl('VC#detalhe').arg(0,veiculo.id).build() }">${veiculo.placa }</a>
			</td>
			<td>${veiculo.marcaModelo }</td>
			<td>${veiculo.especie }</td>
			<td>${veiculo.motivo_apreecao }</td>
			<td>${veiculo.numero }</td>
			<td>
				<fmt:formatDate pattern="dd/MM/yyyy" value="${veiculo.dataApreecao.time }"/>
			</td>
			<td><a href="${s:mvcUrl('VC#detalheLiberacao').arg(0,veiculo.id).build() }">Liberação</a></td>
			<td>id: ${veiculo.id} - liberados:
				<c:forEach items="${liberacoes }" var="liberacao">
				 ${liberacao.id_veiculoLiberado }
				</c:forEach>
			</td>
		</tr>
	</tbody>
	</c:forEach>
</table>

</div>


<%@ include file="/WEB-INF/views/rodape.jsp" %>
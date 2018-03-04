<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="/WEB-INF/views/cabacalho.jsp" %>
	
<div class="container">

<h1 align="center">LIBERAÇÃO DE VEÍCULO</h1>
<form:form action="${s:mvcUrl('LC#gravarLiberacao').build() }" method="POST" commandName="liberacao">
<div class="container" >
			
	
			<div class="col-xs-6 col-md-6">
				
			    <h3>INFORMAÇÕES DE LIBERAÇÃO</h3>
			    <label>Descreva em que situação o veículo foi liberado:</label><br>
				<textarea rows="4" cols="40" name="descricao"></textarea><br>
			</div>
			<div class="col-xs-6 col-md-6">
			    <h3>DIVIDAS NO DMTT</h3>
			    <label> Valor das Diárias</label>
				<input type="text" name="valor_diarias"><br>
				<label>Número de Diárias</label>
				<input type="text" name="numero_diarias"><br>
				
				<label>Situação</label>
				<input type="text" name="tipo"><br>
				
				<label>Data de Liberação do veículo</label>
				<input type="text" name="data_liberacao" >	<br>	
				<label>id</label>
				<input type="text" name="veiculo" value="${veiculo.id }" >
			</div>
	    
</div>

	<div class="container">
	  <div class="col-xs-6 col-md-6" >
		<h3>IDENTIFICAÇÃO DO VEÍCULO</h3>
		
		<label>Placa: ${veiculo.placa }</label><br>
		<label>Marca/Modelo: ${veiculo.marcaModelo }</label><br>
		<label>Espécie: ${veiculo.especie }</label><br>
	  </div>
<div class="col-xs-6 col-md-6">
<h3>IDENTIFICAÇÃO DO INFRATOR</h3>
<label>Nome do Condutor: ${veiculo.nome }</label><br>
<label>CNH: ${veiculo.cnh }</label><br>
<label>UF: ${veiculo.uf }</label><br>
<label>CPF: ${veiculo.cpf }</label><br>
</div>

<div class="col-xs-6 col-md-6">
<h3>IDENTIFICAÇÃO DO LOCAL DE INFRAÇÃO</h3>
<label>Logradouro: ${veiculo.logradouro }</label><br>
<label>Ponto de Referência: ${veiculo.pontoDeReferencia }</label><br>
<label>Data:</label><fmt:formatDate pattern="dd/MM/yyyy" value="${veiculo.dataApreecao.time }"/><br>
<label>Município: ${veiculo.municipio }</label><br>
</div>

<div class="col-xs-6 col-md-6">
<h3>IDENTIFICAÇÃO DA INFRAÇÃO</h3>
<label>Motivo de Apreenção: ${veiculo.motivo_apreecao }</label><br>
<label>Numero: ${veiculo.numero }</label><br>
<label>Matricula: ${veiculo.numeroMatricula }</label><br>
</div>
</div>
 <button type="submit" class="btn btn-primary">Adicionar Veículo Liberado</button>
     </form:form>
</div>

<br />
<br />
<%@ include file="/WEB-INF/views/rodape.jsp" %>
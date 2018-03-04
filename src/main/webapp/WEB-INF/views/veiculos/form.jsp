<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<%@ include file="/WEB-INF/views/cabacalho.jsp" %>
	
<div class="container">
<h1>Cadastro de Veículo</h1>


<form:form action="${s:mvcUrl('VC#gravar').build() }" method="POST" commandName="veiculo">
<h3>IDENTIFICAÇÃO DO VEÍCULO</h3>

	<div class="form-group">
		<label>Placa</label>
		<form:input path="placa" cssClass="form-control"/>
		<form:errors path="placa"/>
	</div>
	<div class="form-group">
		<label>Marca/Modelo</label>
		<form:input path="marcaModelo" cssClass="form-control"/>
		<form:errors path="marcaModelo"/>
	</div>
	<div class="form-group">
		<label>Espécie</label>
		<form:input path="especie" cssClass="form-control"/>
		<form:errors path="especie"/>
	</div>
	<h3>IDENTIFICAÇÃO DO INFRATOR</h3>
	<div class="form-group">
		<label>Nome</label>
		<form:input  path="nome" cssClass="form-control"/>
		<form:errors path="nome"/>
	</div>
	<div class="form-group">
		<label>CNH</label>
		<form:input  path="cnh" cssClass="form-control"/>
		<form:errors path="cnh"/>
	</div>
	<div class="form-group">
		<label>UF</label>
		<form:input  path="uf" cssClass="form-control"/>
		<form:errors path="uf"/>
	</div>
	<div class="form-group">
		<label>CPF</label>
		<form:input  path="cpf" cssClass="form-control"/>
		<form:errors path="cpf"/>
	</div>
	<h3>IDENTIFICAÇÃO DE LOCAL DE INFRAÇÃO</h3>
	<div class="form-group">
		<label>Logradouro</label>
		<form:input  path="logradouro" cssClass="form-control"/>
		<form:errors path="logradouro"/>
	</div>
	<div class="form-group">
		<label>Ponto de Referência</label>
		<form:input  path="pontoDeReferencia" cssClass="form-control"/>
		<form:errors path="pontoDeReferencia"/>
	</div>
	<div class="form-group">
		<label>Data de Apreeção</label>
		<form:input path="dataApreecao" cssClass="form-control"/>
		<form:errors path="dataApreecao"/>
	</div>
	<div class="form-group">
		<label>Nome do Município</label>
		<form:input  path="municipio" cssClass="form-control"/>
		<form:errors path="municipio"/>
	</div>
	<h3>IDENTIFICAÇÃO DA INFRAÇÃO</h3>
	
	<div class="form-group">
		<label>Infração Cometida(Motivo de Apreenção)</label>
		<form:textarea  path="motivo_apreecao" cssClass="form-control"/>
		<form:errors path="motivo_apreecao"/>
	</div>
	<div class="form-group">
		<label>Código da Infração(Número)</label>
		<form:input path="numero" cssClass="form-control"/>
		<form:errors path="numero"/>
	</div>
	<div class="form-group">
		<label>Matricula do Agente</label>
		<form:input path="numeroMatricula" cssClass="form-control"/>
		<form:errors path="numeroMatricula"/>
	</div>
	<button type="submit" class="btn btn-primary">Adicionar Veículo</button>
</form:form>
</div>

<br />
<br />
<%@ include file="/WEB-INF/views/rodape.jsp" %>
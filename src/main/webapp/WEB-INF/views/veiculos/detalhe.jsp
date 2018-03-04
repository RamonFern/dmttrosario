<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<%@ include file="/WEB-INF/views/cabacalho.jsp" %>


<div class="container">
<h1>Detalhe de um Veículo</h1>


<h2>IDENTIFICAÇÃO DO VEÍCULO</h2>
<h3><label>Placa: ${veiculo.placa }</label></h3>
<h3><label>Marca/Modelo: ${veiculo.marcaModelo }</label></h3>
<h3><label>Espécie: ${veiculo.especie }</label></h3>

<h2>IDENTIFICAÇÃO DO INFRATOR</h2>
<h3><label>Nome do Condutor: ${veiculo.nome }</label></h3>
<h3><label>CNH: ${veiculo.cnh }</label></h3>
<h3><label>UF: ${veiculo.uf }</label></h3>
<h3><label>CPF: ${veiculo.cpf }</label></h3>

<h2>IDENTIFICAÇÃO DO LOCAL DE INFRAÇÃO</h2>
<h3><label>Logradouro: ${veiculo.logradouro }</label></h3>
<h3><label>Ponto de Referência: ${veiculo.pontoDeReferencia }</label></h3>
<h3><label>Data:</label><fmt:formatDate pattern="dd/MM/yyyy" value="${veiculo.dataApreecao.time }"/></h3>
<h3><label>Município: ${veiculo.municipio }</label></h3>

<h2>IDENTIFICAÇÃO DA INFRAÇÃO</h2>
<h3><label>Motivo de Apreenção: ${veiculo.motivo_apreecao }</label></h3>
<h3><label>Numero: ${veiculo.numero }</label></h3>

<h3><label>Matricula: ${veiculo.numeroMatricula }</label></h3>
</div>

<%@ include file="/WEB-INF/views/rodape.jsp" %>
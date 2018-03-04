<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
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

#divBusca{
  background-color:#FFFFFF;
  border:solid 1px;
  border-radius:15px;
  width:300px;
}

#txtBusca{
  float:left;
  background-color:transparent;
  padding-left:5px;
  font-style:italic;
  font-size:18px;
  border:none;
  height:32px;
  width:260px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      
	      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">DMTT</a>
	      	      
	    </div>
	    <div id="navbar" class="collapse navbar-collapse">
	      <ul class="nav navbar-nav">
                
                <li class="dropdown">
                  <a href="/dmttrosario/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Serviços </a>
                    <ul class="dropdown-menu">
	                    <li><a href="#">Veículo Apreendido</a></li>
	                    <li><a href="#">Veículo Liberados</a></li>
	                    <li><a href="#">Cadastrar Usuário</a></li>
	                   
	                    <li role="separator" class="divider"></li>
	                    <li class="dropdown-header">Agente de Trânsito</li>
	                    <li><a href="${s:mvcUrl('VC#listar').build() }">Lista de Veículos</a></li>
	                    
	                      <security:authorize access="isAuthenticated()">    
						        <li><a href="${s:mvcUrl('VC#form').build() }">Cadastro de Veículos</a></li>
						        <li><a href="${s:mvcUrl('HC#list').build() }">Fotos de Veículos Apreendidos</a></li> 
						         <li><a href="/logout">Sair</a></li> 
						        <!--<li><a  href="/dmttrosario/logout">Sair</a></li>-->
		                  </security:authorize>                           
                     </ul>
                 <li><a href="${s:mvcUrl('HC#album').build() }">Palestras da SNT</a></li>
                 <li><a href="${s:mvcUrl('HC#operacaoTransito').build() }">Operações de Trânsito</a></li>
                 <li><a href="${s:mvcUrl('HC#cursoGmAt').build() }">Cursos Preparatório GM/AT</a></li>         
                 <li><a href="${s:mvcUrl('HC#contato').build() }">Contato</a></li>     
	             <li><a href="${s:mvcUrl('HC#quemsomos').build() }">Quem Somos</a></li> 
	       
	       
	      </ul>
	     
	     
	      
	    </div><!--/.nav-collapse -->
	  </div>
	</nav>
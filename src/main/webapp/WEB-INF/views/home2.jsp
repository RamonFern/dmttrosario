<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
  <head>
   
   
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/imagens/favicon.ico">

    <title>Departamento de Trânsito de Rosário</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <script src="resources/js/ie-emulation-modes-warning.js"></script>
    <link href="resources/css/carousel.css" rel="stylesheet">
    <script src="resources/js/angular.min.js"></script>
  </head>
<!-- NAVBAR
================================================== -->
 <%@ include file="/WEB-INF/views/cabacalho.jsp" %>

<h1 align="center">SEMUSC - Secretaria Municipal de Segurança e Cidadania - Rosário - MA</h1>
    <!-- Carousel
    ================================================== -->

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="resources/imagens/logos/LOGOTRAN.png" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="resources/imagens/logos/logo_rosario.png" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
             
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="resources/imagens/logos/logo_guarda2.png" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only" >Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

<h1 align="center">Ações Realizadas Pelo DMTT - GM</h1>
<br>
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="resources/imagens/palestra.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>PALESTRA EM ESCOLA</h2>
          <p>Todos os anos durante a semana nacional do trânsito que acontece no mês de Setembro são realizadas diversas palestrar nas escolas na intenção de conscientizar as pessoas sobre um trânsito mais seguro.</p>
          <p><a class="btn btn-default" href="${s:mvcUrl('HC#album').build() }" role="button">Ver fotos</a></p>
          
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/imagens/operacao.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>OPERAÇÕES DE TRÂNSITO</h2>
          <p>Operações de trânsito realizadas nos ultimos dez anos desta corporação onde foram apreendidos centenas de veículos que estavam circulando irregularmente na nossa cidade.</p>
          <p><a class="btn btn-default" href="${s:mvcUrl('HC#operacaoTransito').build() }" role="button">Ver fotos</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/imagens/curso.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2>CURSO GM E AT</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="${s:mvcUrl('HC#cursoGmAt').build() }" role="button">Ver fotos</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">10 ANOS DE HISTÓRIA DMTT/GM</h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="resources/imagens/palestra4.jpg" >
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">DMTT/GM - ROSÁRIO</h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5 col-md-pull-7"><!-- src="resources/imagens/pri_dois.jpg" -->
          <img class="featurette-image img-responsive center-block" src="resources/imagens/palestra5.jpg">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">GM/AT - ROSÁRIO</h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5"><!-- src="resources/imagens/pri_tres.jpg" -->
          <img class="featurette-image img-responsive center-block" src="resources/imagens/curso.jpg" >
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->

    
<%@ include file="/WEB-INF/views/rodape.jsp" %>
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="resources/js/jquery.min.js"><\/script>')</script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/holder.min.js"></script>
    <script src="resources/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

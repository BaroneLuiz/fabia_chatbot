<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin</title>
    <link rel="icon" href="Imagens/icon.png">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/c34d53500c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/admin.css">
  </head>
  <body>

    <nav class="navbar navbar-expand-md sticky-top my-nav">
      <a class="navbar-brand h1 mb-0"href="#">FABIA</a>

      <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target" type="button" name="button">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span></span>
      </button>

      <div class="collapse navbar-collapse" id="collapse_target">
      <ul class="navbar-nav mr-auto">
        <li class="divisor" role="separator"></li>
        <li class="nav-item">
          <a class="nav-link" href="conteudo.html">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" data-target="#dropdown_target" href="#">Capítulos</a>
          <span class="caret"></span>

        <div class="dropdown-menu" aria-labelledby="dropdown_target">
          <ul class="navbar-nav">
          <a class="dropdown-item" href="cap1.html">Capitulo 1</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap2.html">Capitulo 2</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap3.html">Capitulo 3</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap4.html">Capitulo 4</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap5.html">Capitulo 5</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap6.html">Capitulo 6</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="cap7.html">Capitulo 7</a>
        </ul>
        </div>
        </li>
      </ul>

      <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="admin.html">Admin</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="usuario.html"><i class="fas fa-user"></i>Meus dados</a>
      </li>
      <li class="divisor" role="separator"></li>
      <li class="nav-item">
        <a class="nav-link" href="index.html">Sair</a>
      </li>
      </ul>
    </div>
    </nav>
<!-- End nav -->

  <div class="container">
    <div class="row">
    <div class="col-3"></div>
    <div class="col-6">
      <div class="tabela">
      </div>
      <table>
        <tr>
          <th>RM</th>
          <th>Nome</th>
          <th colspan="2" id="comando">Comandos</th>
        </tr>
        <c:forEach items="${lista}" var="lista">
        <tr>
          <td> <form class="form-container" action="cadastro.jsp" method="post" id="formcadastro">
            <div class="form-group">
              <label for="rm">RM</label><br>
              <input type="text" name="rm" value="${lista.rm }" id="rm" readonly>
            </div>
           </form>
          </td>
          <td> 
           <form class="form-container" action="cadastro.jsp" method="post" id="formcadastro">
            <div class="form-group">
              <label for="rm">Nome</label><br>
              <input type="text" name="nome"value="${ }" id="nome" readonly>
            </div>
           </form>
          </td>
          <td>
            <a class="btn btn-outline-dark alter" href="#">Alterar</a>
          </td>
          <td>
            <a class="btn btn-outline-dark delet" href="#">Remover</a>
          </td>
        </tr>
        </c:forEach>
        
      </table>
        </div>
      </div>
    </div>




<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
        <p class="lead">Redes Sociais</p>
        <div class="social">
        <a href="https://pt-br.facebook.com/fiap/" ><i class="fab fa-facebook-square"></i></a>
        <a href="https://twitter.com/fiap" ><i class="fab fa-twitter-square"></i></a>
        <a href="https://www.instagram.com/fiapoficial/?hl=pt-br" ><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
        <p class="lead">Localização</p>
        <p class="address">Aclimação,
          Av. Lins de Vasconcelos,
          1222 e 1264</p>
        <div class="local">
        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.842492309439!2d-46.62541608533719!3d-23.574099767947246!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce597abf1a28ff%3A0x1b02a58f85e6395e!2sFIAP!5e0!3m2!1spt-BR!2sbr!4v1570590966601!5m2!1spt-BR!2sbr" width="200" height="200" frameborder="0" style="border:0;" allowfullscreen=""></iframe></p>
      </div>
      </div>
    </div>
  </div>
</footer>






  </body>
  </html>

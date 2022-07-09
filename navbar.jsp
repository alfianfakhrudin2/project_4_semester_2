<%-- 
    Document   : navbar
    Created on : Jul 8, 2022, 10:09:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .navbar-brand img{
                width: 100%;
            }
            .navbar-brand{
                margin-right: 0px;
                padding: 0em 1em;
            }
            .navbar-nav{
                align-items: center;
                
            }
            .navbar .navbar-nav .nav-link{
                color: #fff;
                font-size: 1.4em;
                padding: .5em 1em;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
        <img src="${pageContext.request.contextPath}/img/logoe.svg" width="30" height="30" class="d-inline-block align-top" alt=""></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#">Features</a>
        </li>        
          <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
        <img src="${pageContext.request.contextPath}/img/logoe.svg" width="30" height="30" class="d-inline-block align-top" alt=""></a>
        <li class="nav-item">
          <a class="nav-link " href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link ">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    </body>
</html>

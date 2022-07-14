<%-- 
    Document   : navbar
    Created on : Jul 9, 2022, 11:08:22 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css" />
        <link rel="stylesheet" href="public/assets/frontend/navbar.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap');
            :root{
             --dd: #fff;
             --fonts: #212121;
             
            }
            .modegelap {
              --dd: #2C3639;
              --fonts: whitesmoke;
            }
            .navbar{
                background-color: var();
                height: 100%;
            }
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
                font-size: 1.7em;
                padding: .3em 1em;
                font-family: 'Lato', sans-serif;
            }
            .iconuse{
                color: #fff;
                width: 150px;
                height: 150px;
                font-size: 30px;
            }
            .pekok1{
                background-color: white;
                color: black;
            }

            .pedo{
                width: 53px;
            }
            .pelor{
                display: flex;
            }
            .hr{
                border-bottom: solid 5px;
            }
            .ikonlogout{
                width: 30px;
                color: red;
            }
            .bgr{
                background:  var(--dd);
                color: var(--fonts);
            }
            .pepe{
                color: white;
                font-size: 1.5rem;
            }
            .napbar{
                margin-right: 80px
            }
            
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                
                <!-- Dropdown -->
                <div class="nav-item dropdown pepe">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      <i class="bi bi-person-circle iconuse"></i>
                      <%= request.getSession(true).getAttribute("name") %>
                    </a>
                    <ul class="dropdown-menu bgr" aria-labelledby="navbarDropdown">
                        <li class="pelor peko1"><img class="dropdown-item pedo" src="${pageContext.request.contextPath}/img/moon.png" id="icon">Theme</li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item bgr pelor peko1" href="${pageContext.request.contextPath}/logout"><i class="bi bi-box-arrow-left ikonlogout"></i> Logout</a></li>
                    </ul>
                </div>
                    <a class="navbar-brand d-lg-none" href="${pageContext.request.contextPath}/home">
                        <img src="${pageContext.request.contextPath}/img/logolur.svg" width="70" height="70" class="d-inline-block align-top" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                       <span class="navbar-toggler-icon"></span>
                    </button>
                    
                <!-- Navbar -->
                <div class="collapse navbar-collapse napbar" id="navbarNav">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item">
                            <a class="nav-link " href="create">Transaction</a>
                        </li>        
                            <a class="navbar-brand d-none d-lg-block" href="${pageContext.request.contextPath}/home">
                        <img src="${pageContext.request.contextPath}/img/logolur.svg" width="50" height="50" class="d-inline-block align-top" alt="logo"></a>
                        <li class="nav-item">
                            <a class="nav-link " href="transaction">Manage Books</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>

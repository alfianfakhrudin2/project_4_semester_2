<%-- 
    Document   : login
    Created on : Jul 11, 2022, 11:50:58 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Librayium Login Page</title>
    <!--BOOSTRAP ICONS CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css" />
    <!--BOOSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<style>
    .pp{
       background: linear-gradient(120deg,#2980b9, #8e44ad);
       margin: 0;
    padding: 0;
    background: linear-gradient(120deg,#2980b9, #8e44ad);
    height: 100vh;
    overflow: hidden;
    }
    
    .title{
        font-size: 2rem;
        font-family: "Poppins", sans-serif;
        text-align: center;
        padding: 20px 0;
        border-bottom: 1px solid silver;
    }
    form .kolom{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
    }
    .kolom input{
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
    }
    .kolom label{
      position: absolute;
      top: 50%;
      left: 5px;
      color: #adadad;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
      transition: .5s;
    }
    .kolom span::before{
      content: '';
      position: absolute;
      top: 40px;
      left: 0;
      width: 0%;
      height: 2px;
      background: #2691d9;
      transition: .5s;
    }
    .kolominput:focus ~ label,
    .kolom input:valid ~ label{
      top: -5px;
      color: #2691d9;
    }
    .kolom input:focus ~ span::before,
    .kolom input:valid ~ span::before{
      width: 100%;
    }
    .bungkusadmin{
        align-items: center;
        margin-left: 8.8rem;
    }
    
</style>

<body class="pp">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-sm-center h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
		<div class="text-center my-5">
                    <img src="${pageContext.request.contextPath}/img/logolur.svg" alt="logo" width="100" height="100">
		</div>
                <% if (request.getSession(true).getAttribute("errors") != null) {%>
                <div class="col-12 mb-3">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Error!</strong> <%= request.getSession(true).getAttribute("errors")%>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </div>
                <% } %>
                <div class="card shadow-lg">
                    <div class="card-body p-5">
                        <div class="bungkusadmin">
                            <img src="${pageContext.request.contextPath}/img/admin.png" width="70" height="70">
                        </div>
                        
                        <p class="card-title fw-bold mb-4 text-center title">Login</p>
                        <form method="POST" action="login">
                            <div class="mb-3 kolom">
                                <input type="text" class="inpt1"  name="username" required>
                                <span></span>
                                <label class="">Username</label>
                            </div>
                            <div class="mb-3 kolom">
                                <input type="password" class="inpt1"  name="password" required>
                                <span></span>
                                <label>Password</label>
                            </div>
                            <div class="d-flex align-items-center">
                                <button type="submit" class="btn btn-primary ms-auto" value="login" btn-rounded>
                                    SignIn
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="text-center mt-5 text-muted">
                    Copyright &copy; 2022 | Libraryium 
                </div>
            </div>
	</div>
    </div>
</section>
	<jsp:include page='layouts/scripts.jsp'></jsp:include>
</body>
</html>

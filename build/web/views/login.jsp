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
    <!--LINK BOOSTRAP-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css" rel="stylesheet"/>
    <!--LINK CSS GUA-->
    <link rel="stylesheet" href="public/assets/frontend/login.css">
</head>

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
                                <label class="lepi">Username</label>
                            </div>
                            <div class="mb-3 kolom">
                                <input type="password" class="inpt1"  name="password" required>
                                <span></span>
                                <label class="lepi">Password</label>
                            </div>
                            <div class="d-flex align-items-center d-grid">
                                <button type="submit" class="btn design btn-lg btn-block btn-rounded"><b>SIGN IN</b></button>
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

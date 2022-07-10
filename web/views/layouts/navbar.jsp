<%-- 
    Document   : navbar
    Created on : Jul 7, 2022, 9:04:33 PM
    Author     : M Fauzan M
--%>
 <nav class="navbar navbar-dark" style="background-color: #2f4f4f;">
	 <div class="container-fluid">
	 <a class="navbar-brand" href="${pageContext.request.contextPath}/index">
    <img src="${pageContext.request.contextPath}/img/logo.svg" width="30" height="30" class="d-inline-block align-top" alt="">Libraryium</a>
    <a class="btn btn-outline-danger my-2 my-sm-0" href="${pageContext.request.contextPath}/logout" role="button">Logout</a>
   </nav>
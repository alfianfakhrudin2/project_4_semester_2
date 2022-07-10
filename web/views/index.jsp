<%-- 
    Document   : index
    Created on : Jun 27, 2022, 10:11:14 PM
    Author     : Fauzan
--%>
      <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="Libraryium" value="Homepage" />
        </jsp:include>
    </head>
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        
        <!-- Begin page content -->
                <main class="flex-shrink-0">
          <div class="container">
                <h1 class="mt-5">Hello, <%= request.getSession(true).getAttribute("name") %></h1>
                <p class="lead">Selamat Datang Di Aplikasi Libraryium Kamu Masuk Dengan Username: <strong><%= request.getSession().getAttribute("username") %></strong></p>
                </div>
        </main>
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>

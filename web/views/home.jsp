<%-- 
    Document   : home
    Created on : Jul 9, 2022, 11:06:50 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.InfoBooksController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="public/assets/backend/main.css">
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap');
            .tb{
                background-color: #3F4E4F;
                color: #fff;
            }
            .hed{
                font-family: 'Ubuntu', sans-serif;
                font-size: 2.5rem;
            }
        </style>
    </head>
   <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        
        <%
            InfoBooksController pc = new InfoBooksController();
            ResultSet rs = pc.get();
        %>
        
        <!-- Begin page content -->
        <main class="flex-shrink-0">
          <div class="container">
            <h1 class="mt-5 hed">Menu Books | Library</h1>
            <div class="row pt-5">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr class="tb">
                                <th>ID</th>
                                <th>Books Title</th>
                                <th>Writer</th>
                                <th>Pages</th>
                                <th>Issued Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()) { %>
                            <tr>
                                <td><%= rs.getString("id") %></td>
                                <td><%= rs.getString("books_title") %></td>
                                <td><%= rs.getString("writer") %></td>
                                <td><%= rs.getString("page") %></td>
                                <td><%= rs.getString("issued_date") %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
          </div>
        </main>
        
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>

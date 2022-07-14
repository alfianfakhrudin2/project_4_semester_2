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
            /** table css**/
            
            :root{
             --primary : #edf2fc;
             --fonts: #212121;
             --table: #282a36;
             --fonts1: whitesmoke;
            }
            .modegelap {
              --primary: #282a36;
              --fonts: whitesmoke;
              --fonts1: #212121;
              --table: #fff;
              --dd: #2C3639;
            }
            .tr{
                color: #fff;
                transition: all .2s ease-in;
                cursor: pointer;
                background: var(--table);
            }
            th, td{
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            tr:hover {
            background-color: #f5f5f5;
            transform: scale(1.02);
            color: black;
            box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
            }
            th{
            }
            
            
            
            /** title diatas table**/
            .hed{
                font-family: 'Ubuntu', sans-serif;
                font-size: 2.5rem;
                color: var(--fonts);
            }
            
            body{
                background-color: var(--primary);
                color: var(--fonts);
            }
            .bge{
                color: var(--table);
                box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
                border-collapse: collapse;
                left: 50%;
                top: 50%;
            }
            .page-links{
                border-color: #eaeaea;
                background: 0 0;
            }
            .page-link{
                color: #027be;
            }
            .page-links .page-link{
                padding: 0;
                margin: 0 0 0.3em 0.3em;
                border: 2px solid #eaeaea;
                font-size: .8em;
                width: 2.5em;
                height: 2.5em;
                line-height: calc( 2.5em - 4px);
                display: inline-block;
                text-align: center;
                transition: all .2s linear;
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
                    <table class="table bge">
                        <thead>
                            <tr>
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
                    <div class="page-links"> Pages: 
                        <span class="post-page-numbers current" aria-current="page">
                             <span class="page-link">1</span>
                        </span>
                        <a href="#" class="post-page-numbers">
                            <span class="page-link">2</span>
                        </a>
                    </div>
                </div>
            </div>
          </div>
        </main>
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        <jsp:include page='layouts/darkmode.js'></jsp:include>
    </body>
</html>

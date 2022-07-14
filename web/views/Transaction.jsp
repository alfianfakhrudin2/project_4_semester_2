<%-- 
    Document   : Transaction
    Created on : Jul 13, 2022, 11:29:31 PM
    Author     : User
--%>

<%@page import="Controller.TranController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
        <style>
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
            body{
                background: var(--primary);
            }
            .jdul{
                color: var(--fonts);
            }
        </style>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <%
            TranController pc = new TranController();

            String search = "";
            ResultSet rs;

            if (request.getParameter("search") != null) {
                search = request.getParameter("search");
            } 

            if (search.equals("")) {
                rs = pc.gets();
            } else {
                rs = pc.getByName(search);
            }
        %>

        
        <!-- Begin page content -->
        <main class="flex-shrink-0">
          <div class="container">
            <h1 class="mt-5 jdul">Peminjaman Buku Libraryum</h1>
            <div class="row pt-5">
                    <div class="col-6">
                        <form action="index" method="GET">
                            <div class="mb-3">
                                <label class="form-label jdul">Search</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="search" value="<%= search%>" />
                                    <span class="input-group-append">
                                        <button class="input-group-text bg-light d-block">
                                            <i class='bx bxs-search'></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            <div class="row pt-5">
                <div class="col-12">
                    <table class="table jdul">
                        <thead>
                            <tr>
                                <th>Books ID.</th>
                                <th>Borrower Name</th>
                                <th>Borrow Date</th>
                                <th>Return Date</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (rs.next()) {%>
                                <tr>
                                    <td><%= rs.getString("id")%></td>
                                    <td><%= rs.getString("borrower_name")%></td>
                                    <td><%= rs.getString("borrow_date")%></td>
                                    <td><%= rs.getString("return_date")%></td>
                                    <td>
                                        <form action="delete?id=<%= rs.getString("id") %>" method="POST"
                                              onsubmit="return confirm('Are you sure want to delete the data?')"
                                        >
                                            <a href="edit?id=<%= rs.getString("id") %>" class="btn btn-sm btn-info">Edit</a>
                                            <input type="hidden" name="id" value="<%= rs.getString("id")%>" />
                                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                        </form>
                                        
                                    </td>
                                </tr>
                                <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
          </div>
        </main>
        
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        <jsp:include page='layouts/darkmode.js'></jsp:include>
    </body>
</html>

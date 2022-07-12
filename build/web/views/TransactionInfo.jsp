<%-- 
    Document   : create
    Created on : Jun 29, 2022, 10:59:12 PM
    Author     : Hudya
--%>

<%@page import="Controller.TranController"%>
<%@page import="Controller.BooksController"%>
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
            .input-group-append {
                cursor: pointer;
            }
        </style>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://unpkg.com/js-datepicker/dist/datepicker.min.css"> 
        
     


    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>

        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <div class="row">
                    
                                <div class="col-12">
                                    <div class="col-6" style="display: inline-block;">
                                        <h1 class="mt-5">Tambah Peminjaman</h1>
                                        <p class="lead">Tambah Peminjaman baru pada sistem Libraryum</p>
                                        <div class="row pt-5">
                                            <div class="col-12">
                                                <form method="POST" action="create">
                                                    <div class="mb-3">
                                                        <label class="form-label">Book ID</label>
                                                        <input type="text" class="form-control" placeholder="Masukkan ID Buku..." name="bookid" required>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Borrower Name</label>
                                                        <input type="text" class="form-control" placeholder="Masukkan nama peminjam..." name="BorrowName" required>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Borrow Date</label>
                                                        <div class="input-group date" id="datepicker">
                                                            <input type="text" class="form-control" id="dates" name="borrow date" required />
                                                            <span class="input-group-append">
                                                                <span class="input-group-text bg-light d-block">
                                                                    <i class='bx bxs-calendar'></i>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Return Date</label>
                                                        <div class="input-group date" id="datepicker">
                                                            <input type="text" class="form-control" id="date" name="return date" required />
                                                            <span class="input-group-append">
                                                                <span class="input-group-text bg-light d-block">
                                                                    <i class='bx bxs-calendar'></i>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <button type="submit" class="btn btn-primary btn-small btn-rounded">Pinjam</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                        
             <%
            TranController pc = new TranController();
            ResultSet bs = pc.gets();
            %>
            
                                    <div class="col-6" style=" float: right; padding-left: 3rem; ">
                                        <h1 class="mt-5">Daftar Peminjaman Libraryum</h1>
                                        <p class="lead">Peminjaman hanya dilakukan pada hari kerja, hari Minggu dan Sabtu libur.</p>
                                        <div class="row pt-5">
                                            <div class="col-12">
                                                <table class="table table-striped table-hover">
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
                                                        <% while(bs.next()) { %>
                                                        <tr>
                                                            <td><%= bs.getString("Books_ID") %></td>
                                                            <td><%= bs.getString("Borrower_Name") %></td>
                                                            <td><%= bs.getString("Borrow_Date") %></td>
                                                            <td><%= bs.getString("Return_Date") %></td>
                                                            <td>
                                                                <a href="#" class="btn btn-sm btn-info">Edit</a>
                                                                <a href="#" class="btn btn-sm btn-danger">Delete</a>
                                                            </td>
                                                        </tr>
                                                        <% } %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                    
                </div>

                           
            </div>
            
           
            
           
          
        </main>


        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        <script src="https://unpkg.com/js-datepicker"></script> 
        <script>
            const picker = datepicker('#dates', {
                formatter: (input, date, instance) => {
                    input.value = date.toLocaleDateString(); // => '1/1/2099'
                }
            })
        </script>
        <script>
            const pickers = datepicker('#date', {
                formatter: (input, date, instance) => {
                    input.value = date.toLocaleDateString(); // => '1/1/2099'
                }
            })
        </script>
        

    </body>
</html>

<%-- 
    Document   : TransactionInfo
    Created on : Jul 13, 2022, 11:11:38 PM
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
            .input-group-append {
                cursor: pointer;
            }
        </style>
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://unpkg.com/js-datepicker/dist/datepicker.min.css"> 
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Edu+SA+Beginner:wght@500&display=swap');
            /*Darkmode*/
            
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
            .fonts{
                color: var(--fonts);
            }
            .text{
                text-align: center;
                font-family: 'Edu SA Beginner', cursive;
            }
        </style>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>

        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5 fonts text">Tambah Peminjaman</h1>
                <div class="row pt-5">
                    <div class="col-12">
                        <form method="POST" action="create">
                            <div class="mb-3">
                                <label class="form-label fonts">Books ID</label>
                                <input type="text" class="form-control" placeholder="Masukkan ID Buku..." name="id" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label fonts">Borrower Name</label>
                                <input type="text" class="form-control" placeholder="Masukkan nama peminjam..." name="borrower_name" required>
                            </div>
                             <div class="mb-3">
                                <label class="form-label fonts">Borrow Date</label>
                                <div class="input-group date" id="datepicker">
                                    <input type="text" class="form-control" id="date" name="borrow_date" required />
                                    <span class="input-group-append">
                                        <span class="input-group-text bg-light d-block">
                                            <i class='bx bxs-calendar'></i>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label fonts">Return_Date</label>
                                <div class="input-group date" id="datepicker">
                                    <input type="text" class="form-control" id="dates" name="return_date" required />
                                    <span class="input-group-append">
                                        <span class="input-group-text bg-light d-block">
                                            <i class='bx bxs-calendar'></i>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary btn-small btn-rounded">Submit</button>
                            </div>
                        </form>
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
            }
            
            const picker = datepicker('#date', {
                formatter: (input, date, instance) => {
                    input.value = date.toLocaleDateString(); // => '1/1/2099'
                }
            }
        </script>
        <jsp:include page='layouts/darkmode.js'></jsp:include>
    </body>
</html>
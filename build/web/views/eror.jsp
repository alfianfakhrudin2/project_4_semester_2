<%-- 
    Document   : eror
    Created on : Jul 11, 2022, 10:32:51 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>404 page with image</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .gbr1{
                width: 400px;
                height: 400px;
            }
            .gbr2{
                width: 200px;
                height: 200px;
                text-align: center;
                margin-right: 6rem;
    margin-right: 0px;
    padding-top: 17px;
    position: relative;
    color: whitesmoke;
    object-fit: cover;
    max-width: 2000%;
            }
        </style>
    </head>

    <body>
        <div class="d-flex align-items-center justify-content-center vh-100">
            <div class="text-center row">
                <div class=" col-md-6">
                    <img src="${pageContext.request.contextPath}/img/boneka.png" alt="gambar"
                        class="img-fluid gbr1">
                </div>
                <div class=" col-md-6 mt-5">
                    <p class="fs-3"> <span class="text-danger">Opps!</span> Halaman Tidak Tersedia.</p>
                    <p class="lead">
                        The page you’re looking for doesn’t exist.
                    </p>
                    <a href="home" class="btn btn-primary">Go Home</a>
                </div>
            </div> 
        </div>
    </body>

</html>

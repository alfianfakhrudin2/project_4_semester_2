<%-- 
    Document   : login
    Created on : Jul 8, 2022, 4:56:47 AM
    Author     : Fauzan
--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Librayium Login Page</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<img src="${pageContext.request.contextPath}/img/edit.svg" alt="logo" width="100">
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
							<h1 class="fs-4 card-title fw-bold mb-4 text-center">Libraryium</h1>
							<form method="POST" action="login">
								<div class="mb-3">
								<label class="form-label">Username</label>
                                <input type="text" class="form-control" placeholder="Masukkan username anda..." name="username" required>
								</div>
								<div class="mb-3">
                                                                    <label class="form-label">Username</label>
				<input type="password" class="form-control" placeholder="Masukkan password anda..." name="password" required>
								</div>
								<div class="d-flex align-items-center">
									<button type="submit" class="btn btn-primary ms-auto">
										Login
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="text-center mt-5 text-muted">
						Copyright &copy; 2022 &mdash; BenZanFin 
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page='layouts/scripts.jsp'></jsp:include>
</body>
</html>
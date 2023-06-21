<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<style>
        body {
            background-image: url("https://scontent.fkul3-2.fna.fbcdn.net/v/t39.30808-6/217599985_4781172865232047_3005654387441350992_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=973b4a&_nc_ohc=NK1BKZ1IfA8AX_dZD1D&_nc_ht=scontent.fkul3-2.fna&oh=00_AfDO8i3ex4-iygp4BxCt1tF0Bpu_hrof4X_-8wpKHkY4oQ&oe=6497B177");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
</style>
</head>
<body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">Sign Up to Smart Room</h3>
            <form name="form" action="RegisterServlet" method="post">
            <div class="form-outline mb-4">
              <label class="form-label d-flex justify-content-start text-secondary fs-5" for="username">Please enter your username</label>
              <input type="text" id="username" name="username" class="form-control form-control-lg" />
            </div>
            <div class="form-outline mb-4">
              <label class="form-label d-flex justify-content-start text-secondary fs-5" for="password">Please enter your password</label>
              <input type="password" id="password" name="password" class="form-control form-control-lg" />
            </div>
	<div class="pt-1 mb-4 btn-group btn-block d-flex justify-content-between">
		<div class="float-left">
		    <a href="Login.jsp"><button class="btn btn-danger btn-lg btn-block border" type="cancel" Value="Cancel">Cancel</button></a>
		</div>
		<div class="float-right">
			<button class="btn btn-success btn-lg btn-block" type="submit" Value="Register">Register</button>
		</div>
	</div>
	</form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>
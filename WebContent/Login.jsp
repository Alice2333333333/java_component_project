<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script> 
function validate()
{ 
	 var username = document.form.username.value; 
	 var password = document.form.password.value;

	 if (username==null || username=="")
	 { 
	 alert("Username cannot be blank"); 
	 return false; 
	 }
	 else if(password==null || password=="")
	 { 
	 alert("Password cannot be blank"); 
	 return false; 
	 } 
}
</script> 
<style>
        body {
            background-image: url("https://scontent-kul2-1.xx.fbcdn.net/v/t39.30808-6/217599985_4781172865232047_3005654387441350992_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=973b4a&_nc_ohc=o1gdpsB2MdEAX8eSaa_&_nc_ht=scontent-kul2-1.xx&oh=00_AfCHTRQBQp4omCwbNI_8LzczbAxAIKjFp1AttgYzFFOgqw&oe=648FC877");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
</style>
</head>
<body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">Smart Room Login</h3>
            <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
            <div class="form-outline mb-4">
              <label class="form-label" for="username"><h5>Username</h5></label>
              <input type="text" id="username" name="username" class="form-control form-control-lg" />
            </div>
            <div class="form-outline mb-4">
              <label class="form-label" for="password"><h5>Password</h5></label>
              <input type="password" id="password" name="password" class="form-control form-control-lg" />
            </div>
        	<div>
        		<span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
		 : request.getAttribute("errMessage")%></span>
		 	</div>
	<div class="pt-1 btn-group btn-block d-flex justify-content-between">
		<div class="float-left">
		    <button class="btn btn-danger btn-lg btn-block border" type="reset" Value="Reset">Reset</button>
		</div>
		<div class="float-right">
			<button class="btn btn-success btn-lg btn-block" type="submit" Value="Login">Login</button>
		</div>
	</div>
	</form>
    </div>
          <form name="form" action="RegisterServlet" method="post">
           	<div class="pt-1 mt-n5 mb-4 mx-5 btn-group btn-block d-flex">
				<button class="btn btn-link btn-lg btn-block" type="submit" Value="Register">Do not have an Account? Sign Up</button>
			</div>
			</form>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
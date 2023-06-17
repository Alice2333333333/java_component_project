<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
          	<div class="h3">
            	<p>Hi <%=session.getAttribute("username") %></p>
            </div>
            <h3>Welcome to Smart Room @ UPM</h3>
            <img src="https://static.vecteezy.com/system/resources/previews/011/408/705/original/smart-room-logo-design-bulb-and-room-icon-logo-free-vector.jpg" alt="smart_room" width="300" height="300">
            <div class="mt-5 fst-italic">
            	<p>You may click the button below to control the light on or off. You will see the light change in android emulator.</p>
            </div>
            <form name="form" action="BrokerConnectServlet" method="post">
           	<div class="pt-1 mb-4 btn-group btn-block d-flex">
		    	<button class="btn btn-primary btn-lg btn-block" type="submit" Value="switch" name="switch">On / Off</button>
			</div>
			</form>
			<form name="form" action="LogoutServlet" method="get">
           	<div class="pt-1 mb-4 btn-group btn-block d-flex">
		    	<button class="btn btn-danger btn-lg btn-block" type="submit" Value="Logout" name="Logout">Logout</button>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
		<meta name="viewport" http-equiv="Content-Type" content=" width=device-width, initial-scale=1.0; text/html; charset=ISO-8859-1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
		<title>Welcome to Disha - A University Recommendation System</title>	
	</head>
	
<body>
<!-- Header Code -->
<div class="navbar navbar-inverse navbar-static-top">	
	<div class="container">
		<a class="navbar-brand" href="index.jsp">DISHA</a>
		
		<!--Code to collapse the header bar on mobile browser-->
		<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">			
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>									
		</button>
		
		<div class = "collapse navbar-collapse navHeaderCollapse">			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="http://universityapi.vaibhav28.cloudbees.net/" target="_blank">API</a></li>
				<li class="active"><a href="blog.jsp">Blog</a></li>				
				<li class="dropdown">					
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">About Us<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="about_project.jsp">About Project</a></li>
						<li><a href="https://www.linkedin.com/in/mshah18">Manan Shah</a></li>						
						<li><a href="https://www.linkedin.com/in/vaibhavbhatnagar100">Vaibhav Bhatnagar</a></li>
						<li><a href="developer_apurv.jsp">Apurv Shrivastav</a></li>						
					</ul>
				</li>					
				<li><a href="contact_us.jsp">Contact Us</a></li>
			</ul>  
		</div>
	</div>	
</div>
<!-- Header Ends Here -->



<!-- Footer Code -->
<div class="navbar navbar-default navbar-fixed-bottom">
	<div class="container">
		<p class="navbar-text pull-left">All Rights Reserved @ Team-Manan</p>
		<a href="http://www.linkedin.com/in/mshah18" class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>  
	</div>
</div>
<!-- Footer Ends Here -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"> </script>

</body>
</html>


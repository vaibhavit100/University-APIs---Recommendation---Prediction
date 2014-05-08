<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
		<meta name="viewport" http-equiv="Content-Type" content=" width=device-width, initial-scale=1.0; text/html; charset=ISO-8859-1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
		<title>Welcome to Disha - A University Recommendation System</title>

<style type="text/css">
		
body { 
  background: url(http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
</style>	
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
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="http://universityapi.vaibhav28.cloudbees.net/" target="_blank">Developers</a></li>
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

<!-- Main page image box -->

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">You Have Been Successfully Logged Out!!</h3>
			 			</div>
			 			<div class="panel-body">
			    			
<a href="register.jsp" class="btn btn-info btn-block">Register</a>
			    		
			    		</form>
			    		<br />
			    				<a href="index.jsp" class="btn btn-info btn-block">Sign In</a>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
<!-- Footer Code -->
<div class="navbar navbar-default navbar-fixed-bottom">
	<div class="container">
		<p class="navbar-text pull-left">All Rights Reserved @ Team-Manan</p>
		<a href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo" class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>  
	</div>
</div>
<!-- Footer Ends Here -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"> </script>

</body>
</html>


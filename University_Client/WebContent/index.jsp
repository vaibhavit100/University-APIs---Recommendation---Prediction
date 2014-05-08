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

.panel-default {
opacity: 0.9;
margin-top:30px;
}
.form-group.last { margin-bottom:0px; }

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
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-lock"></span> Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="login" method="POST">
                    <div class="form-group">
                        <%if((session.getAttribute("message"))!=null)
                        {
                        	String msg= session.getAttribute("message").toString();
                        %>

                        <script>
                        window.alert("Invalid Username or Password");
                        	
                        	
                        </script>
                        	
                       <%  }	%>
                        <label for="inputEmail3" class="col-sm-3 control-label">
                            Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label">
                            Password</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"/>
                                    Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group last">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-success btn-sm" value="submit">
                                Sign in</button>
                                 <button type="reset" class="btn btn-default btn-sm">
                                Reset</button>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="panel-footer">
                    Not Registered? <a href="register.jsp">Register here</a></div>
            </div>
        </div>
    </div>
</div>

<!-- Footer Code -->
<div class="navbar navbar-default navbar-fixed-bottom">
	<div class="container">
		<p class="navbar-text pull-left">All Rights Reserved @ Team-SJSU</p>
		<a href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo" class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>  
	</div>
</div>
<!-- Footer Ends Here -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"> </script>

</body>
</html>


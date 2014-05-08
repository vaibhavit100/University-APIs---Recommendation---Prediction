<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
		<meta name="viewport" http-equiv="Content-Type" content=" width=device-width, initial-scale=1.0; text/html; charset=ISO-8859-1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
		<title>Register - Disha</title>

<style type="text/css">
		
body { 
  background: url(http://1.bp.blogspot.com/-t6zmt485mqY/UgLP-CcqCuI/AAAAAAAAAJU/toB1OgC-0Ag/s1600/graduation_2010_1.jpg) no-repeat center center fixed; 
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
	<script src="lib/jquery-1.10.2.js"></script>
	
	<style type="text/css">  

	.flable {  
		 color: gray;  
		}  
		  
		.status {  
		 font-family: verdana;  
		 font-size: 12px;  
		}  
		  
		.email{  
		 color: blue;  
		}  
		</style>  <!-- <img src='images/loading.gif'><font color=gray> Checking availability...</font> -->
		 <script type="text/javascript">  
		          $(document).ready(function(){  
		              $(".email").change(function(){  
		                  var email = $(this).val();  
		                  if(email.length >= 3){  
		                      $(".status").html("");  
		                       $.ajax({  
		                          type: "GET",  
		                          url: "registration",  
		                          data: "email="+ email,  
		                          success: function(msg){  
		  
		                              $(".status").ajaxComplete(function(event, request, settings){  
		                                     
		                                  $(".status").html(msg);  
		  
		                              });  
		                          }  
		                      });   
		                  }  
		                  else{  
		                         
		                      $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
		                  }  
		                    
		              });  
		          });  
		        </script>  
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
			    		<h3 class="panel-title">Please sign up DISHA  <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form" action="registration" method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email"  class="email" placeholder="Email Address">
			    			                            <span class="status"></span>
			    			
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
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
		<p class="navbar-text pull-left">All Rights Reserved @ Team-SJSU</p>
		<a href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo" class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>  
	</div>
</div>
<!-- Footer Ends Here -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"> </script>

</body>
</html>


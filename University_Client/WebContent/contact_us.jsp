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
.jumbotron {
background: #e3eff8;
color: #040101;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 1px;
padding-bottom: 1px; }
.jumbotron small {
color: #040101;
}
.h1 small {
font-size: 24px;
color: #040101;
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
				<li><a href="index.jsp">Home</a></li>
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
				<li class="active"><a href="contact_us.jsp">Contact Us</a></li>
			</ul>  
		</div>
	</div>	
</div>
<!-- Header Ends Here -->

<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Team SJSU</strong><br>
                1 Washington Sqe <br>
                San Jose, CA 95112<br>
                <abbr title="Phone">
                    P:</abbr>
                (408) 924-1000
            </address>
            <address>
                <strong>Team SJSU</strong><br>
                <a href="mailto:sjsu@gmail.com">sjsu@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>



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


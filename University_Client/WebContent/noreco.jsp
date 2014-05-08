<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ page import='java.util.*,javax.servlet.http.HttpSession'%>

<!DOCTYPE html>
<html>
<head>
<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta name="viewport" http-equiv="Content-Type"
	content=" width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
<link href="css/jquery-ui.css" rel="stylesheet">
<title>Home - Disha</title>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />

<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<style type="text/css">
.ui-autocomplete {
	z-index: 1000;
}
</style>

<body>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<a class="navbar-brand" href="home">DISHA</a>

		<!--Code to collapse the header bar on mobile browser-->
		<button class="navbar-toggle" data-toggle="collapse"
			data-target=".navHeaderCollapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<div class="col-sm-3 col-md-3"></div>
		<div class="collapse navbar-collapse navHeaderCollapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="home">Home <span
						class="glyphicon glyphicon-home"> </span></a></li>
	
				<li><a href="logout.jsp">Logout <span
						class="glyphicon glyphicon-off"> </span></a></li>
			</ul>
		</div>
	</div>
</div>

	<!-- Header Code -->
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<br><br><br><br><br><br><br><br><div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">SORRY: GRE-TOEFL Scores too low !!!</h3>
			 			</div>
			 			<div class="panel-body">
			    			
<a href="home.jsp" class="btn btn-info btn-block">Back to home Page</a>
			    		
			    		
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>

	<!-- Footer Code -->
	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">All Rights Reserved @ Team-SJSU</p>
			<a href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo"
				class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>
		</div>
	</div>
	<!-- Footer Ends Here -->

	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
	<script src="lib/bootstrap.min.js"></script>
</body>
</html>


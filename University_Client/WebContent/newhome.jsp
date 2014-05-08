<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.university.bean.RegistrationBean"%>
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
<title>Welcome to Disha - A University Recommendation System</title>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />
<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>

</head>
<script>

$(function() {
	$("#univ_name").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
		open : function() {
			$(this).removeClass("ui-corner-all").addClass(
			"ui-corner-top");
		},
		close : function() {
			$(this).removeClass("ui-corner-top").addClass(
			"ui-corner-all");
		}
	});
});</script>
<script src="js/graph.js"></script>
<body>
	<!-- Header Code -->

	<%
	RegistrationBean ui = (RegistrationBean) session.getAttribute("userName");
%>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">DISHA</a>

			<!--Code to collapse the header bar on mobile browser-->
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="col-sm-3 col-md-3">
				<form class="navbar-form" action="universityInfo" method="GET">
					<div class="input-group">
						<div class="ui-widget" align="right">
							<input id="univ_name" type="text" class="form-control"
								placeholder="Search University" name="univ_name"
								style="padding: 3px 6px; width: 500px;">
						</div>
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="home.jsp">Home</a></li>
					<li class="active"><a href="profile.jsp">myProfile</a></li>
					<li class="active"><a href="recommend.jsp">myRecommendations</a></li>
					<li><a href="blog.jsp">Blog</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="profile">Profile</a></li>
							<li><a href="logout">Sign Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Header Ends Here -->

	<!-- Main page image box -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<div class="list-group">
					<a href="#" class="list-group-item active">Dashboard</a> <a
						href="#" class="list-group-item">Get Suggestions</a> <a href="#"
						class="list-group-item">Compare University</a> <a href="#"
						class="list-group-item">Compare Your Profile</a>

				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active">Search University</a> <a
						href="#" class="list-group-item">By Name</a> <a href="#"
						class="list-group-item">By Branch</a> <a href="#"
						class="list-group-item">By State</a>
				</div>

				<div class="list-group">
					<a href="#" class="list-group-item active">Service</a> <a href="#"
						class="list-group-item">Forum</a>
				</div>

			</div>


	<!-- 		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Dashboard</h1>

				<table class="table table-striped">
					<thead>
						<tr>
							<td><div id="container-ug1"
									style="min-width: 150px; height: 300px; margin: 0 auto"></div></td>
							<td><div id="container-ug2"
									style="min-width: 150px; height: 300px; margin: 0 auto"></div></td>
						</tr>
					</thead>
				</table>
				<form role="form" action="home" method="GET" id="graph-form">
					<table class="table table-striped">
						<thead>
							<tr>
								<th colspan="6" style="text-align: center;">To know more
									enter university names you like</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><input id="univName1" type="text" class="form-control"
									placeholder="Ex. SJSU" name="univName1" style="width: 100px;"></td>
								<td><input id="univName2" type="text" class="form-control"
									placeholder="Ex. ASU" name="univName2" style="width: 100px;"></td>
								<td><input id="univName3" type="text" class="form-control"
									placeholder="Ex. TAMU" name="univName3"
									style="padding: 1px 2px; width: 100px;"></td>
								<td><input id="univName4" type="text" class="form-control"
									placeholder="Ex. SFSU" name="univName4"
									style="padding: 1px 2px; width: 100px;"></td>
								<td><input id="univName5" type="text" class="form-control"
									placeholder="Ex. NYU" name="univName5"
									style="padding: 1px 2px; width: 100px;"></td>
								<td><button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button></td>

							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
 -->

	<!-- Footer Code -->
	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">All Rights Reserved @ Team-Manan</p>
			<a href="http://www.linkedin.com/in/mshah18"
				class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>
		</div>
	</div>
	<!-- Footer Ends Here -->

	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
	<script src="lib/bootstrap.min.js"></script>
</body>
</html>


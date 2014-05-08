<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta name="viewport" http-equiv="Content-Type"
	content=" width=device-width, initial-scale=1.0; text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<link href="lib/jquery-ui.css" rel="stylesheet">
<title>Welcome to Disha - A University Recommendation System</title>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />
<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
</head>

<script>
	$(function() {
		$("#univName")
				.autocomplete(
						{
							source : function(request, response) {
								$
										.ajax({
											url : "http://localhost:8080/pizzashop/getUniversity",
											dataType : "json",
											data : {
												maxRows : 6,
												startsWith : request.term
											},
											success : function(data) {
												response($
														.map(
																data.univInfoList,
																function(item) {
																	return {
																		label : "US "
																				+ item.stabbr
																				+ " - "
																				+ item.instnm,
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
	});
</script>

<body>
	<!-- Header Code -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">DISHA</a>

			<!--Code to collapse the header bar on mobile browser-->
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Home</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Header Ends Here -->

	<!-- Main page image box -->
	<div class="container-fluid">
		<div class="row">

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-1 main">
				<h1 class="page-header">Dashboard</h1>

				<h2 class="sub-header">API's</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>URL</th>
								<th>Return Type</th>
								<th>Required Parameter</th>						
							</tr>								
						</thead>
						<tbody>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniv</td>
								<td>List<UniversityInfo></td>
								<td>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniversityById</td>
								<td>List<UniversityInfo></td>
								<td>PARAM univ_id</td>
							</tr>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniversityByInstyName</td>
								<td>List<UniversityInfo></td>
								<td>PARAM inst_name,</td>
							</tr>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniversityByCity</td>
								<td>List<UniversityInfo></td>
								<td>PARAM city,
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniversityByState</td>
								<td>List<UniversityInfo></td>
								<td>PARAM state,
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/getUniversityByZip</td>
								<td>List<UniversityInfo></td>
								<td>PARAM zip,</td>
							</tr>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/findUniversitybyenrollment</td>
								<td>List<UniversityInfo></td>
								<td>PARAM univ_id,</td>
							</tr>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/findUniversitybyapplication</td>
								<td>List<UniversityInfo></td>
								<td>PARAM univ_id,</td>
							</tr>
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/findUniversitybymingre</td>
								<td>List<UniversityInfo></td>
								<td>PARAM mingre,
							<tr>
								<td>http://universityapi.vaibhav28.cloudbees.net/findUniversitybymintoefl</td>
								<td>List<UniversityInfo></td>
								<td>PARAM mintoefl</td>
							</tr>

						</tbody>
					</table>
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
	<script src="lib/bootstrap.min.js"> </script>
</body>
</html>
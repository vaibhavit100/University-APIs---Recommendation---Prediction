<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta name="viewport" http-equiv="Content-Type"
	content=" width=device-width, initial-scale=1.0; text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
<title>DISHA API System</title>


<style type="text/css">
.panel-default {
	opacity: 0.9;
	margin-top: 30px;
}

.form-group.last {
	margin-bottom: 0px;
}
</style>
</head>

<body>
	<!-- Header Code -->
	<div class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">DISHA API System</a>

			<!--Code to collapse the header bar on mobile browser-->
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="dictionary.jsp">Dictionary</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Header Ends Here -->

	<!-- Main page image box -->
	<div class="container-fluid">
		<div class="row">

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-1 main">
				<h1 class="page-header" align="center">API's Dashboard</h1>

				<h4 class="sub-header" align="center">This API's are RESTful
					API's which provide JSON Response to the developer</h4>
				<h4 class="sub-header" align="center">We have developed a prototype system on these API's. 
				<a href="http://universityclient.team-sjsu.cloudbees.net/">Click Here</a>
				to see prototype.
				</h4>

				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>S.No</th>
								<th>URL</th>
								<th>Return Type</th>
								<th>Required Parameter</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfo">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfo</a></td>
								<td>List (JSON)</td>
								<td></td>
							<tr>
							
								<td>2</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoById">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoById</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>3</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>
							<tr>
								<td>4</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByCity">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoBy</a></td>
								<td>List (JSON)</td>
								<td>city</td>
							<tr>
								<td>5</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByState">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByState</a></td>
								<td>List (JSON)</td>
								<td>state</td>
							<tr>
								<td>6</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByZip">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByZip</a></td>
								<td>List (JSON);</td>
								<td>zip</td>
							</tr>
							<tr>
								<td>7</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByCountyName">http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByCountyName</a></td>
								<td>List (JSON)</td>
								<td>countyName</td>
							</tr>
							<tr>
								<td>8</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getAllEnrollCourse">http://universityapi.vaibhav28.cloudbees.net/getAllEnrollCourse</a></td>
								<td>List (JSON)</td>
								<td></td>
							</tr>
							<tr>
								<td>9</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivId">http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivId</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>10</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivName">http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>

							<tr>
								<td>11</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getAllFinancialAid">http://universityapi.vaibhav28.cloudbees.net/getAllFinancialAid</a></td>
								<td>List (JSON)</td>
								<td></td>
							</tr>
							<tr>
								<td>12</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivId">http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivId</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>13</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivName">http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>
							<tr>
								<td>14</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getAllUniversityProgram">http://universityapi.vaibhav28.cloudbees.net/getAllUniversityProgram</a></td>
								<td>List (JSON)</td>
								<td></td>
							</tr>
							<tr>
								<td>15</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramById">http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramById</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>16</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramByName">http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramByName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>
							<tr>
							<tr>
								<td>17</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsById">http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsById</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>18</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsByName">http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsByName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>
							<tr>
								<td>19</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivId">http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivId</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>20</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivName">http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivName</a></td>
								<td>List (JSON)</td>
								<td>univName</td>
							</tr>

							<tr>
								<td>21</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityApplicationById">http://universityapi.vaibhav28.cloudbees.net/getUniversityApplicationById</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>22</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinGRE">http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinGRE</a></td>
								<td>List (JSON)</td>
								<td>mingre</td></tr>
								
							<tr>
								<td>23</td>

								<td><a
									href="http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinTOEFL">http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinTOEFL</a></td>
								<td>List (JSON)</td>
								<td>mintoefl</td>
							</tr>
							<tr>
								<td>24</td>

								<td><a href="http://universityapi.vaibhav28.cloudbees.net/getUniversityIdByScore">http://universityapi.vaibhav28.cloudbees.net/getUniversityIdByScore</a></td>
								<td>List (JSON)</td>
								<td>mingre, mintoefl</td>
							</tr>
														<tr>
								<td>25</td>

								<td><a href="http://universityapi.vaibhav28.cloudbees.net/getAllUniversityStates">http://universityapi.vaibhav28.cloudbees.net/getAllUniversityStates</a></td>
								<td>List (JSON)</td>
								<td></td>
							</tr>
							<tr>
								<td>26</td>

								<td><a href="http://universityapi.vaibhav28.cloudbees.net/getAllUniversityName">http://universityapi.vaibhav28.cloudbees.net/getAllUniversityName</a></td>
								<td>List (JSON)</td>
								<td></td>
							</tr>
							<tr>
								<td>27</td>

								<td><a href="http://universityapi.vaibhav28.cloudbees.net/getUniversityApplicationById">http://universityapi.vaibhav28.cloudbees.net/getUniversityApplicationById</a></td>
								<td>List (JSON)</td>
								<td>univId</td>
							</tr>
							<tr>
								<td>28</td>

								<td><a href="http://universityapi.vaibhav28.cloudbees.net/getUniversityByminGreToefl">http://universityapi.vaibhav28.cloudbees.net/getUniversityByminGreToefl</a></td>
								<td>List (JSON)</td>
								<td>mingre, mintoefl</td>
								
							</tr>
							<tr>
								<td colspan="1">Sample Request</td>
								<td colspan="2">http://universityapi.vaibhav28.cloudbees.net/getUniversityByCity?univName=San%20Jose</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--
  Below we include the Login Button social plugin. This button uses the JavaScript SDK to
  present a graphical Login button that triggers the FB.login() function when clicked. -->

	<!-- Footer Code -->

	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">All Rights Reserved @ Team-SJSU</p>
			<a href="http://www.linkedin.com/in/"
				class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>
		</div>
	</div>
	<!-- Footer Ends Here -->

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="lib/bootstrap.min.js"> </script>

</body>
</html>
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
<link href="css/dashboard.css" rel="stylesheet">
<link href="css/jquery-ui.css" rel="stylesheet">
<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>


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
				<h1 class="page-header" align="center">APIs Dictionary</h1>
	<div class="container-fluid">
		<div class="row">

			
				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a href="#basicdetail" data-toggle="tab"><i
							class="fa fa-envelope-o"></i>University Characteristics</a></li>
					<li><a href="#financialdetail" data-toggle="tab"><i
							class="fa fa-reply-all"></i>Financial Details</a></li>
					<li><a href="#enrollmentdetail" data-toggle="tab"><i
							class="fa fa-file-text-o"></i>Enrollement Details</a></li>
					<li><a href="#admissiondetail" data-toggle="tab"><i
							class="fa fa-clock-o"></i>Admission Details</a></li>
				</ul>


				<div class="tab-content">
				<div class="tab-pane active" id="basicdetail">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>S.No</th>
								<th>Paramater</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>UNITID</td>
								<td>Unique identification number of the institution</td>
							<tr>
							
								<td>2</td>
								<td>INSTNM</td>
								<td>Institution (entity) name</td>
							</tr>
							<tr>
								<td>3</td>

								<td>ADDR</td>
								<td>Street address or post office boxe</td>
							</tr>
							<tr>
								<td>4</td>
								<td>CITY</td>
								<td>City location of institution</td>
							<tr>
								<td>5</td>

								<td>STABBR</td>
								<td>State abbreviation</td>
							<tr>
								<td>6</td>

								<td>ZIP</td>
								<td>ZIP code</td>
							</tr>
							<tr>
								<td>7</td>

								<td>FIPS</td>
								<td>FIPS state code</td>
							</tr>
							<tr>
								<td>8</td>

								<td>OBEREG</td>
								<td>Geographic region</td>
							</tr>
							<tr>
								<td>9</td>

								<td>CHFNM</td>
								<td>Name of chief administrator</td>
							</tr>
							<tr>
								<td>10</td>
								<td>CHFTITLE</td>
								<td>Title of chief administrator</td>
							</tr>

							<tr>
								<td>11</td>

								<td>GENTELE</td>
								<td>General information telephone number</td>
							</tr>
							<tr>
								<td>12</td>

								<td>EIN</td>
								<td>Employer Identification Number</td>
							</tr>
							<tr>
								<td>13</td>

								<td>OPEID</td>
								<td>Office of Postsecondary Education (OPE) ID Number</td>
							</tr>
							<tr>
								<td>14</td>

								<td>OPEFLAG</td>
								<td>OPE Title IV eligibility indicator code</td>
							</tr>
							<tr>
								<td>15</td>

								<td>WEBADDR</td>
								<td>Institution's internet website address</td>
							</tr>
							<tr>
								<td>16</td>

								<td>ADMINURL</td>
								<td>Admissions office web address</td>
							</tr>
							<tr>
							<tr>
								<td>17</td>

								<td>FAIDURL</td>
								<td>Financial aid office web address</td>
							</tr>
							<tr>
								<td>18</td>

								<td>APPLURL</td>
								<td>Online application web address</td>
							</tr>
							<tr>
								<td>19</td>

							<td>NPRICURL</td>
								<td>Online application web address</td>
							</tr>

							<tr>
								<td>20</td>

								<td>ICLEVEL</td>
								<td>Level of institution</td>
							</tr>
							<tr>
								<td>21</td>

								<td>CONTROL</td>
								<td>Control of institution</td></tr>
								
							<tr>
								<td>22</td>
								<td>HLOFFER</td>
								<td>Highest level of offering</td>
							</tr>
							<tr>
								<td>23</td>

								<td>UGOFFER</td>
								<td>Undergraduate offering</td>
							</tr>
							<tr>
								<td>24</td>

								<td>GROFFER</td>
								<td>Graduate offering</td>
							</tr>
							<tr>
								<td>25</td>

								<td>HDEGOFR1</td>
								<td>Highest degree offered</td>
							</tr>
							<tr>
								<td>26</td>

								<td>DEGGRANT</td>
								<td>Degree-granting status</td>
							</tr>
							<tr>
								<td>27</td>
								<td>HOSPITAL</td>
								<td>Institution has hospital</td>
								
							</tr>
							<tr>
								<td>28</td>

								<td>MEDICAL</td>
								<td>Institution grants a Medical College</td>
								
							</tr>
							<tr>
								<td>29</td>

								<td>OPENPUBL</td>
								<td>Institution open to the general public</td>
								
							<tr>
								<td>30</td>

								<td>ACT</td>
								<td>Status of institution</td>
								
							</tr>											
									<tr>
								<td>31</td>

								<td>IALIAS</td>
								<td>Institution name alias</td>
								
							</tr>													
							<tr>
								<td>32</td>

								<td>INSTCAT</td>
								<td>Institutional category</td>
								
							</tr>													
							<tr>
								<td>33</td>

								<td>INSTSIZE</td>
								<td>Institution size category</td>
								
							</tr>													
							<tr>
								<td>34</td>

								<td>F1SYSNAM</td>
								<td>Name of system, governing board or corporate entity</td>
								
							</tr>													
							<tr>
								<td>35</td>

								<td>FAXTELE</td>
								<td>Fax number</td>
								
							</tr>													
							<tr>
								<td>36</td>

								<td>COUNTYCD</td>
								<td>Fips County code</td>
								
							</tr>
							<tr>
								<td>37</td>

								<td>COUNTYNM</td>
								<td>County name</td>
								
							</tr>
							<tr>
								<td>38</td>

								<td>LONGITUDE</td>
								<td>Longitude location of institution</td>
								
							</tr>
							<tr>
								<td>39</td>

								<td>LATITUDE</td>
								<td>Latitude location of institutions</td>
								
							</tr>
					</tbody>
					</table>
				</div>
			</div>

	
	
	
				<div class="tab-pane" id="financialdetail">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>S.No</th>
								<th>Paramater</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>UNITID</td>
								<td>Unique identification number of the institution</td>
							<tr>
							
								<td>2</td>
								<td>SCUGRAD</td>
								<td>Total number of undergraduates - financial aid cohort</td>
							</tr>
							<tr>
								<td>3</td>

								<td>SCUGFFN</td>
								<td>Total number of full-time first-time degree/certificate seeking undergraduates - financial aid cohort</td>
							</tr>
							<tr>
								<td>4</td>
								<td>SCUGFFP</td>
								<td>Full-time first-time degree/certificate seeking undergraduates as a percent of all undergraduates - financial aid cohort</td>
							<tr>
								<td>5</td>

								<td>SCFA2</td>
								<td>Total number of undergraduates - fall cohort</td>
							<tr>
								<td>6</td>

								<td>SCFA1N</td>
								<td>Number of students in fall cohort</td>
							</tr>
							<tr>
								<td>7</td>

								<td>SCFA12N</td>
								<td>Number of students in fall cohort who are paying in-state tuititon rates</td>
							</tr>
							<tr>
								<td>8</td>

								<td>SCFA12P</td>
								<td>Percentage of students in fall cohort who paying in-state tuition rates</td>
							</tr>
							<tr>
								<td>9</td>

								<td>SCFA13N</td>
								<td>Number of students in full-year cohort who are paying out-of-state tuition rates</td>
							</tr>
							<tr>
								<td>10</td>
								<td>SCFA13P</td>
								<td>Percentage of students in full-year cohort who are paying out-of-state tuition rates</td>
							</tr>

							<tr>
								<td>11</td>

								<td>SCFY2</td>
								<td>Total number of undergraduates - full-year cohort</td>
							</tr>
							<tr>
								<td>12</td>

								<td>SCFY1N</td>
								<td>Number of students in full-year cohort</td>
							</tr>
							<tr>
								<td>13</td>

								<td>UAGRNTN</td>
								<td>Number of undergraduate students receiving federal, state, local, institutional or other sources of grant aid</td>
							</tr>
							<tr>
								<td>14</td>

								<td>UAGRNTP</td>
								<td>Percent of undergraduate students receiving federal, state, local, institutional or other sources of grant aid</td>
							</tr>
							<tr>
								<td>15</td>

								<td>UAGRNTT</td>
								<td>Total amount of federal, state, local, institutional or other sources of grant aid dollars received by undergraduate students</td>
							</tr>
							<tr>
								<td>16</td>

								<td>UAGRNTA</td>
								<td>Average amount of federal, state, local, institutional or other sources of grant aid dollars received by undergraduate students</td>
							</tr>
							<tr>
							<tr>
								<td>17</td>

								<td>GISTN2</td>
								<td>Total number, 2011-12</td>
							</tr>
							<tr>
								<td>18</td>

								<td>GISTON2</td>
								<td>Number living on-campus, 2011-12</td>
							</tr>
							<tr>
								<td>19</td>

							<td>GISTWF2</td>
								<td>Number living off-campus with family, 2011-12</td>
							</tr>

							<tr>
								<td>20</td>

								<td>GISTOF2</td>
								<td>Number living off-campus not with family, 2011-12</td>
							</tr>
							<tr>
								<td>21</td>

								<td>GISTUN2L</td>
								<td>Number living arrangement unknown, 2011-12</td></tr>
								
							<tr>
								<td>22</td>
								<td>GISTT2</td>
								<td>Total amount of grant and scholarship aid received, 2011-12</td>
							</tr>
						</tbody>
					</table>
				</div>
		
	
				<div class="tab-pane" id="enrollmentdetail">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>S.No</th>
								<th>Paramater</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>UNITID</td>
								<td>Unique identification number of the institution</td>
							<tr>
							
								<td>2</td>
								<td>EFCIPLEV</td>
								<td>Major field of study</td>
							</tr>
							<tr>
								<td>3</td>

								<td>CIPCODE</td>
								<td>CIP Code for major field of study</td>
							</tr>
						
						</tbody>
					</table>
				</div>
	
	
				<div class="tab-pane" id="admissiondetail">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>S.No</th>
								<th>Paramater</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>UNITID</td>
								<td>Unique identification number of the institution</td>
							<tr>
							
								<td>2</td>
								<td>PEO1ISTR</td>
								<td>Occupational</td>
							</tr>
							<tr>
								<td>3</td>

								<td>PEO2ISTR</td>
								<td>Academic</td>
							</tr>
							<tr>
								<td>4</td>
								<td>CNTLAFFI</td>
								<td>Institutional control or affiliation</td>
							<tr>
								<td>5</td>

								<td>LEVEL1</td>
								<td>Less than one year certificate</td>
							<tr>
								<td>6</td>

								<td>ADMCON1</td>
								<td>Secondary school GPA</td>
							</tr>
							<tr>
								<td>7</td>

								<td>ADMCON2</td>
								<td>Secondary school rank</td>
							</tr>
							<tr>
								<td>8</td>

								<td>ADMCON3</td>
								<td>Secondary school record</td>
							</tr>
							<tr>
								<td>9</td>

								<td>ADMCON4</td>
								<td>Completion of college-preparatory program</td>
							</tr>
							<tr>
								<td>10</td>
								<td>ADMCON5</td>
								<td>Recommendations</td>
							</tr>

							<tr>
								<td>11</td>

								<td>ADMCON6</td>
								<td>Formal demonstration of competencies</td>
							</tr>
							<tr>
								<td>12</td>

								<td>ADMCON7</td>
								<td>Admission test scores</td>
							</tr>
							<tr>
								<td>13</td>

								<td>ADMCON8</td>
								<td>TOEFL (Test of English as a Foreign Language</td>
							</tr>
							<tr>
								<td>14</td>

								<td>ADMCON9</td>
								<td>Other Test (Wonderlic, WISC-III, etc.)</td>
							</tr>
							<tr>
								<td>15</td>

								<td>APPDATE</td>
								<td>Institution's internet website address</td>
							</tr>
							<tr>
								<td>16</td>

								<td>CALSYS</td>
								<td>Calendar system</td>
							</tr>
							<tr>
							<tr>
								<td>17</td>

								<td>APPLFEEU</td>
								<td>Undergraduate application fee</td>
							</tr>
							<tr>
								<td>18</td>

								<td>APPLFEEG</td>
								<td>Graduate application fee</td>
							</tr>
							<tr>
								<td>19</td>

							<td>TUITVARY</td>
								<td>Tuition charge varies for in-district, in-state, out-of-state students</td>
							</tr>

							<tr>
								<td>20</td>

								<td>ROOM</td>
								<td>Institution provide on-campus housing</td>
							</tr>
							<tr>
								<td>21</td>

								<td>ENRLT</td>
								<td>Enrolled total</td></tr>
								
							<tr>
								<td>22</td>
								<td>APPLCN</td>
								<td>Applicants total</td>
							</tr>
							<tr>
								<td>23</td>

								<td>ADMSSN</td>
								<td>Admission total</td>
							</tr>
							<tr>
								<td>24</td>

								<td>ENRLFT</td>
								<td>Enrolled full time total</td>
							</tr>
							<tr>
								<td>25</td>

								<td>TUITPL</td>
								<td>Any alternative tuition plans offered by institution</td>
							</tr>
							<tr>
								<td>26</td>

								<td>MIN GRE</td>
								<td>GRE Score</td>
							</tr>
							<tr>
								<td>27</td>
								<td>MIN TOEFL</td>
								<td>Toefl Score</td>
								
							</tr>
	
						</tbody>
					</table>
				</div>
			</div>
</div></div>	
	
	
	
	
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
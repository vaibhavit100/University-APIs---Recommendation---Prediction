<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="com.university.bean.UniversityInfoListBean, com.university.*, java.util.*,com.university.bean.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comparison</title>
<head>
<!--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta name="viewport" http-equiv="Content-Type"
	content=" width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="http://www.hdwallpaperbackground.com/uploads/allimg/130331/Tsinghua%20University%20photos%20hd%20wallpapers%2010_960x600.jpg" />
<link href="css/jquery-ui.css" rel="stylesheet">
<title>Compare University</title>
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
<script src="js/graph.js"></script>
	<!-- Header Code -->
<ul class="nav nav-tabs">
	<li><a
		href="compareuniversitydetails.jsp">General</a></li>
	<li><a
		href="compareuniversityadmission.jsp">Admission</a></li>

	<li><a
		href="compareuniversityfinance.jsp">FinancialAid</a></li>
	<li  class="active"><a
		href="compareuniversitydepartment.jsp">Department</a></li>
</ul>


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
					<li class="active"><a href="home">Home <span class="glyphicon glyphicon-home"> </span></a></li>
					<li><a href="logout.jsp">Logout <span class="glyphicon glyphicon-off"> </span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<body>
	
<form name="form" action="compareuniversity.jsp"> 
<div class="table-responsive">
  <table class="table">
  <tr>
   <th>
  University
  </th>
     <th>
  Major Field of Study
  </th>
  
  </tr>
 <%

 UnivEnrollmentList resultList=(UnivEnrollmentList)session.getAttribute("enrollCourseList");
HashMap<Integer,String> hmap =(HashMap<Integer,String>)session.getAttribute("hmap");
HashSet set = new HashSet();
List<UnivEnrollment> univEnrollmentList = null;

if (resultList != null) {
	univEnrollmentList= resultList.getUnivEnrollList();
}
  for (UnivEnrollment univ : univEnrollmentList ) {
  if (hmap.containsKey(univ.getUNITID()))
  {
	  if(set.add(univ.getUNITID()))
	  {
	  
	  %>
 <tr>

 <th>

 <%=hmap.get(univ.getUNITID())%> <br>
 </th>
 
  <td>
 <%} %><br>

 <%=univ.getEFCIPLEV()%> <br>
 <%
  } }
 %>
  </td>
 
 </tr>  
 

  </table>
</div>
 <button type="submit" class="btn btn-default">Back To Comparison</button>

</form>
	<!-- Footer Code -->
	<div class="navbar navbar-default navbar-fixed-bottom">
		<div class="container">
			<p class="navbar-text pull-left">All Rights Reserved @ Team-SJSU</p>
			<a href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo"
				class="navbar-btn btn-primary btn pull-right">Follow on LinkedIn</a>
		</div>
	</div>
	<!-- Footer Ends Here -->
</body>
</body>
</html>
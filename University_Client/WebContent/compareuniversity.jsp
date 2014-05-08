<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.university.bean.UniversityInfoListBean, com.university.bean.UniversityInfoBean, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
 <script type="text/javascript">
 function validateCheckBox()
{
 var item=document.form1.univ;
 var j=0;
for(i=0;i<item.length;i++){
 if (item[i].checked==true)
 {
	 
	j=j+1;
 }
}
if(j<1){
  alert("Select atleast one university to compare");
  event.preventDefault();
  return false;
 }
else if(j==1){
	  alert("Select more than one university to compare");
	  event.preventDefault();
	  return false;
	 }
 else
 {
  return true;
 }


}
</script>
<body>
	<!-- Header Code -->


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
<h1 align="center" >Select Universities To Compare</h1>
<form name="form1" action="CompareUniversity" method="POST"> 
<div class="table-responsive">

  <table class="table table-stripped">
  						<thead>
  
  <tr>
   <th>
  University
  </th>
     <th>
  City
  </th>
     <th>
 State
  </th>
     <th>
  Private/Public
  </th>
     <th>
WebAddress
  </th>
  <th>
CountyName
  </th>
  </tr>
 <%// String[] univInfoNameList = (String[])session.getAttribute("key");
 UniversityInfoListBean resultList=(UniversityInfoListBean)session.getAttribute("univInfoList");
List<UniversityInfoBean> univInfoList = null;
if (resultList != null) {
	univInfoList = resultList.getUnivInfoList();
}
//for(int i = 0;i<univInfoNameList.length;i++) {
  for (UniversityInfoBean univ : univInfoList  ) {%>
 <tr>

 <td>
 <input type="checkbox"  name="univ" id="univs" value="<%=univ.getUnitid()%>"> <%=univ.getInstnm()%> <br> 
 </td>
 <td>
 <%=univ.getCity()%>
  </td>
 <td>
  <%=univ.getStabbr()%>
  </td>
 <td>
 <%=univ.getControl()%>
  </td>
 <td>
 <%String webAddress = "http://";
 webAddress = (webAddress + univ.getWebaddr()).toLowerCase();
 %>
 <a href=" <%=webAddress%>" target="_blank">  <%=univ.getWebaddr()%> </a>
 
  <td>
 <%=univ.getCountynm()%>
 <%
  }
 %>
 </td>
  </tr>  
  						</thead>
  
  </table>
</div>
 <button type="submit" class="btn btn-primary"  onclick="validateCheckBox()" >Compare</button>
</form>

</body>
</html>
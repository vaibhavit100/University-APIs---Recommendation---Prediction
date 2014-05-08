<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.university.bean.*, java.util.*"%>
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
<title>Predict - Disha </title>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />

<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script src="https://github.com/mattsnider/jquery-plugin-query-parser"></script>
<style type="text/css">
	.ui-autocomplete
	{
		z-index: 1000;
	}
		}
	#wrapper
	{
		width	: 1012px;
		margin	: 0 auto;
 
	}
 

	.embed-code
	{
		width	: 301px;
		height	: 85px;
	}
 

  
      html, body {
        height: 100%;
        margin: 0px;
        padding: 0px
      }

</style>
</head>
<%
    RegistrationBean ui = (RegistrationBean) session.getAttribute("userName");
	String[] univInfoNameList = (String[]) session.getAttribute("univInfoNameList");
	String[] univStateList 	  = (String[])session.getAttribute("univStateList");
	String[] univBranchList   = (String[]) session.getAttribute("univBranchList");
%>
 <script type="text/javascript"> 
 $(function() 
		    {
		    var univName = new Array();
		    <% for(int i = 0;i<univInfoNameList.length;i++){%> univName[<%=i%>] = "<%=univInfoNameList[i]%>"; <%}%>
		    $("#univ_name").autocomplete({source: univName});
		    }
		  );
 
 $(function() 
		    {
		    var branchName = new Array();
		    <% for(int i = 0;i<univBranchList.length;i++){%> branchName[<%=i%>] = "<%=univBranchList[i]%>"; <%}%>		    
		    $("#branch_name").autocomplete({source: branchName});
		    }
		  );
 
 $(function() 
		    {
		    var stateName = new Array();
		    <% for(int i = 0;i<univStateList.length;i++){%> stateName[<%=i%>] = "<%=univStateList[i]%>"; <%}%>
		    $("#state_name").autocomplete({source: stateName});
		    }
		  );
 $(function() 
		    {
		    var univName = new Array();
		    <%  int k=0;
		    UniversityInfoListBean resultList=(UniversityInfoListBean)session.getAttribute("univInfoList");
			   List<UniversityInfoBean> univInfoList = null;
			   if (resultList != null) {
			   	univInfoList = resultList.getUnivInfoList();
			   }
			     for (UniversityInfoBean univ : univInfoList  ) {%>
				  univName[<%=k%>] = "<%=univ.getInstnm()%>"; 
				
				  <%   k++;}%>
		    $("#university_name").autocomplete({source: univName});
		    }
		  );

 </script>

	<script type="text/javascript">
	$(document).ready(function() {
		$('.btn-load-video').click(function() {
			 event.preventDefault(); 
			 $('.the-player').append($("textarea.embed-code").val());
 
			});
		});
	</script>


<body  onload="$('#myCarousel').carousel()"> 
	<!-- Header Code -->


	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">DISHA</a>

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
	<!-- Header Ends Here -->



<div id="myCarousel" class="carousel-inner" style="width: 200px; margin: 0 auto">
</div>

 
	<!-- Main page image box -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
			
				<div class="list-group">
					<a href="#" class="list-group-item active"> 
					<a href="profile" class="list-group-item"><span class="glyphicon glyphicon-user"> Profile</span></a>
				</div>			
				<div class="list-group">
					<a href="#" class="list-group-item active">Dashboard</a> 
					<a href="recommend.jsp" class="list-group-item">Get Recommendation</a>
					 <a href="CompareUniversity" class="list-group-item">Compare University</a> 
					<a href="predict.jsp" class="list-group-item">Want Prediction</a>

				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active">Search University</a>
 
	 			<form action="getDetailFromType" method="GET">
						<div class="input-group">
							<div class="ui-widget" align="right">
								<input id="univ_name" type="text" class="form-control"
									placeholder="By Name" name="univ_name"
									style="padding: 3px 6px;">
							</div>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>

					<form action="getDetailFromType" method="GET">
						<div class="input-group">
							<div class="ui-widget" align="right">
								<input id="branch_name" type="text" class="form-control"
									placeholder="By Branch" name="branch_name"
									style="padding: 3px 6px;">
							</div>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
						
					<form action="getDetailFromType" method="GET">
						<div class="input-group">
							<div class="ui-widget" align="right">
								<input id="state_name" type="text" class="form-control"
									placeholder="By State" name="state_name"
									style="padding: 3px 6px;">
							</div>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form> 
 

				</div>

				<div class="list-group">
					<a href="#" class="list-group-item active">Service</a> 
					<a href="http://jforum.vaibhav28.cloudbees.net/"
						class="list-group-item">Forum</a>
				</div>

		
</div>	

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<br />
			<br />
				<br />	
				<h1 class="page-header">Prediction Anaylsis of U.S Universities</h1>
	 			<form action="PredictData" method="POST">
						<div class="input-group">
							<div class="ui-widget" align="right">
								<input id="university_name" type="text" class="form-control"
									placeholder="Enter University Name" name="university_name" style="padding: 3px 6px;">
							</div>
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form> 
				
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
	
	</div>	
</body>
</html>


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
<title>Result Predict - Disha</title>
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
.ui-autocomplete {
	z-index: 1000;
}

}
#wrapper {
	width: 1012px;
	margin: 0 auto;
}

.embed-code {
	width: 301px;
	height: 85px;
}

html,body {
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
<body>
	<!-- Header Code -->
	<form name="form" action="predict.jsp">


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
	<!-- Header Ends Here -->

	<!-- Main page image box -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">

				<div class="list-group">
					<a href="#" class="list-group-item active"> 
					<a href="profile" class="list-group-item"><span class="glyphicon glyphicon-user"> Profile</span></a>
				</div>	
				<div class="list-group">
					<a href="#" class="list-group-item active">Dashboard</a> <a
						href="recommend.jsp" class="list-group-item">Get
						Recommendation</a> <a href="CompareUniversity" class="list-group-item">Compare
						University</a> <a href="predict.jsp" class="list-group-item">Want
						Prediction</a>


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
									placeholder="By Name" name="branch_name"
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
				<h4 class="page-header">Result</h4>

				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a href="#appdetail" data-toggle="tab"><i
							class="fa fa-envelope-o"></i>Application Prediction</a></li>
					<li><a href="#adddetail" data-toggle="tab"><i
							class="fa fa-reply-all"></i>Admission Prediction</a></li>
					<li><a href="#endetail" data-toggle="tab"><i
							class="fa fa-file-text-o"></i>Enrollement Prediction</a></li>
				</ul>
				<%		List result = new ArrayList();
						result=(List)session.getAttribute("list");
						PredictBean ob = new PredictBean();
						List<PredictBean> pb = null;
						String name=session.getAttribute("univName").toString();
						//PredictBeanList pbl = new PredictBeanList();
						PredictBeanList pbl=(PredictBeanList)session.getAttribute("pbllist");
						pb= pbl.getPredictBeanList();
						ArrayList appList = new ArrayList();
						ArrayList admList = new ArrayList();
						ArrayList enrollList= new ArrayList();

						ArrayList yearList = new ArrayList();
						%>
				<div class="tab-content">
					<div class="tab-pane active" id="appdetail">
						<br>


						<div class="table-responsive">

							<table class="table table-stripped">
								<thead>

									<tr>
										<th>University Name</th>
										<th>Year</th>
										<th>Application</th>
										<th>Men Application</th>
										<th>Women Application</th>
									</tr>
									<% for (PredictBean p: pb ) {
									  appList.add(p.getApplcn());
									  yearList.add(p.getYear() +1 );
									  %>

									<tr>
										<td><%=name%><br></td>
										<td><%=p.getYear() +1 %><br></td>

										<td><%=p.getApplcn()%><br></td>
										<td><%=p.getApplcnw()%><br></td>
										<td><%=p.getApplcnm()%><br></td>
									</tr>
									<% } %>
									<tr>
										<td><%=name%><br></td>
										<td>2014<br></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(0).toString()))))%><br></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(1).toString()))))%><br></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(2).toString()))))%><br></td>
										<%appList.add(Math.abs(Math.round(Double.parseDouble((result.get(0).toString())))));
					  yearList.add(2014);%>
									</tr>
								</thead>
							</table>
							
						</div>
<button type="submit" class="btn btn-default">Back To Selection</button>
				<div id="predictapp" style="min-width: 700px; height: 400px"></div>

					</div>


					<div class="tab-pane" id="adddetail">
						<br>
						<div class="table-responsive">

							<table class="table table-stripped">
								<thead>

									<tr>
										<th>University Name</th>
										<th>Year</th>
										<th>Admission</th>
										<th>Men Admission</th>
										<th>Women Admission</th>
									</tr>
									<% for (PredictBean p: pb ) {
					 admList.add(p.getAdmssn());	%>
									<tr>
										<td><%=name%></td>
										<td><%=p.getYear() +1%><br></td>
										<td><%=p.getAdmssn()%></td>
										<td><%=p.getAdmssnw()%></td>
										<td><%=p.getAdmssnm()%></td>
									</tr>
									<% } %>
									<tr>
										<td><%=name%></td>
										<td>2014</td>

										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(3).toString()))))%></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(4).toString())))) %></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(5).toString())))) %></td>

										<%admList.add(Math.abs(Math.round(Double.parseDouble((result.get(3).toString())))));
					 %>
									</tr>
								</thead>
							</table>
					
						</div>
			<button type="submit" class="btn btn-default">Back To Selection</button>
				<div id="predictadm" ></div>
								
				</div>
					

					<div class="tab-pane" id="endetail">
						<br>

						<div class="table-responsive">

							<table class="table table-stripped">
								<thead>

									<tr>
										<th>University Name</th>
										<th>Enrollment</th>
										<th>Men Enrollment</th>
										<th>Women Enrollment</th>
									</tr>
									<%
										for (PredictBean p : pb) {
											enrollList.add(p.getEnrlt());
									%>
									<tr>
										<td><%=name%></td>
										<td><%=p.getYear() + 1%><br></td>

										<td><%=p.getEnrlt()%></td>
										<td><%=p.getEnrlftw()%></td>
										<td><%=p.getEnrlftm()%></td>
									</tr>
									<%
										}
									%>
									<tr>

										<td><%=name%></td>
										<td>2014</td>

										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(6)
					.toString()))))%></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(7)
					.toString()))))%></td>
										<td><%=Math.abs(Math.round(Double.parseDouble((result.get(8)
					.toString()))))%></td>

										<%
											enrollList.add(Math.abs(Math.round(Double.parseDouble((result.get(6).toString())))));
										%>
									</tr>
								</thead>
							</table>
						</div>
						<button type="submit" class="btn btn-default">Back To Selection</button></form>
						
						<div id="predictenroll" ></div>

					</div>
				</div>

				
				<!-- Footer Code -->
				<div class="navbar navbar-default navbar-fixed-bottom">
					<div class="container">
						<p class="navbar-text pull-left">All Rights Reserved @
							Team-SJSU</p>
						<a
							href="https://www.linkedin.com/edu/school?id=17911&trk=edu-cp-logo"
							class="navbar-btn btn-primary btn pull-right">Follow on
							LinkedIn</a>
					</div>
				</div>


				<script>
$(function () {
    $('#predictapp').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'No. Of Applications'
        },
        subtitle: {
            text: 'Source: National Center for Education Statistics'
        },
        xAxis: {
            categories: [ <%for(int k = 0;k<yearList.size();k++){%>
            ['<%=yearList.get(k)%>'],
            <%}%>
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'No. Of Applications'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Application Prediction',
            data: [<%for(int j= 0;j<appList.size();j++){%>
         	[<%=appList.get(j)%>], <%}%>
            ]
       }]
    });
});

</script>

<script>
$(function () {
    $('#predictadm').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'No. Of Admission'
        },
        subtitle: {
            text: 'Source: National Center for Education Statistics'
        },
        xAxis: {
            categories: [ <%for(int k = 0;k<yearList.size();k++){%>
            ['<%=yearList.get(k)%>'],
            <%}%>
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'No. Of Admissions'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Admission Prediction',
            data: [<%for(int j= 0;j<admList.size();j++){%>
         	[<%=admList.get(j)%>], <%}%>
            ]
       }]
    });
});

</script>

<script>
$(function () {
    $('#predictenroll').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'No. Of Enrollment'
        },
        subtitle: {
            text: 'Source: National Center for Education Statistics'
        },
        xAxis: {
            categories: [ <%for(int k = 0;k<yearList.size();k++){%>
            ['<%=yearList.get(k)%>'],
            <%}%>
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'No. Of Enrollment'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Enrollment Prediction',
            data: [<%for(int j= 0;j<enrollList.size();j++){%>
         	[<%=enrollList.get(j)%>], <%}%>
            ]
       }]
    });
});

</script>

<!-- Footer Ends Here --><!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
<script src="lib/bootstrap.min.js"></script>
</body>
</html>
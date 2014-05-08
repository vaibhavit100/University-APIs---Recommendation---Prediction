<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.university.bean.UniversityInfoListBean, com.university.*, java.util.*,com.university.bean.*"%>

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
<!-- Header Code -->
<ul class="nav nav-tabs">
	<li class="active"><a
		href="compareuniversitydetails.jsp">General</a></li>
	<li><a
		href="compareuniversityadmission.jsp">Admission</a></li>

	<li><a
		href="compareuniversityfinance.jsp">FinancialAid</a></li>
	<li><a
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
				<li class="active"><a href="home">Home <span
						class="glyphicon glyphicon-home"> </span></a></li>
			
				<li><a href="logout.jsp">Logout <span
						class="glyphicon glyphicon-off"> </span></a></li>
			</ul>
		</div>
	</div>
</div>
<body>

	<form name="form" action="compareuniversity.jsp">
		<div class="table-responsive">
			<table class="table">
				<tr>
					<th>University</th>
					<th>Application</th>
					<th>Admission</th>
					<th>Enrollment</th>
					<th>UnderGrad Application Fees</th>
					<th>Grad Application Fees</th>

				</tr>
				<%
					//Service service = new Service();

				 UnivProgramList resultList=(UnivProgramList)session.getAttribute("univProgramList");
				HashMap<Integer,String> hmap =(HashMap<Integer,String>)session.getAttribute("hmap");
				ArrayList univName = new ArrayList();
				ArrayList univAdmission = new ArrayList();
				ArrayList univApplication = new ArrayList();


				List<UnivProgram> univProgramList = null;

				if (resultList != null) {
					univProgramList= resultList.getUnivProgramList();
				}
				  for (UnivProgram univ : univProgramList ) {
				  if (hmap.containsKey(univ.getUNITID()))
				  { univName.add(hmap.get(univ.getUNITID()));
				    univAdmission.add(univ.getADMSSN());
				    univApplication.add(univ.getAPPLCN());
				    session.setAttribute("univNameList",univName);
				    session.setAttribute("univAdmissionList",univAdmission);
				%>
				<tr>

					<td><%=hmap.get(univ.getUNITID())%> <br></td>

					<td><%=univ.getAPPLCN()%> <br></td>

					<td><%=univ.getADMSSN()%> <br></td>

					<td><%=univ.getENRLT()%> <br></td>
					<td><%=univ.getAPPLFEEU().concat("$")%> <br></td>
					<td><%=univ.getAPPLFEEG().concat("$")%> <br></td>
 <%
 	} }
 %></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-default">Back To
			Comparison</button>

	</form>
	
	<script>
	
	
	$(function () {
        $('#app').highcharts({
            title: {
                text: 'No. of Applications',
                x: -20 //center
            },
            subtitle: {
                text: 'Source: National Center for Education Statistics',
                x: -20
            },
            xAxis: {
                categories:[ <%for(int i = 0;i<univName.size();i++){%>
                ['<%=univName.get(i)%>'],
                <%}%>]
            },
            yAxis: {
                title: {
                    text: 'No. Of Applications'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: ''
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Application',
                data:[	<%for(int i = 0;i<univName.size();i++){%>

            	[<%=univApplication.get(i)%>],
            <%}%>]             
            }]
        });
    });
    
	</script>
	
	
	   <br><br>
   <div id="app"
		style="min-width: 310px; height: 450px; margin: 0 auto"></div>
		<br><br>
<script>
	
	
	$(function () {
        $('#admission').highcharts({
            title: {
                text: 'No. of Admissions',
                x: -20 //center
            },
            subtitle: {
                text: 'Source: National Center for Education Statistics',
                x: -20
            },
            xAxis: {
                categories:[ <%for(int i = 0;i<univName.size();i++){%>
                ['<%=univName.get(i)%>'],
                <%}%>]
            },
            yAxis: {
                title: {
                    text: 'No. Of Admissions'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: ''
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Admission',
                data:[	<%for(int i = 0;i<univName.size();i++){%>

            	[<%=univAdmission.get(i)%>],
            <%}%>]             
            }]
        });
    });
    
	</script>
	
   <div id="admission"
		style="min-width: 310px; height: 450px; margin: 0 auto"></div>
		<br><br><br><br><br><br>
	
	
	
	
	<!-- 
	
	<script>
$(function () {
	var uName = new Array();

	<%for(int i = 0;i<univName.size();i++){%> uName[<%=i%>] = "<%=univName.get(i)%>"; <%}%>

	var uAdmission = new Array();

	 	<%for(int i = 0;i<univAdmission.size();i++){%> uAdmission[<%=i%>] = <%=univAdmission.get(i)%>; <%}%>
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Applications in University'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                },
                showInLegend: true

            }
        },
        series: [{
            type: 'pie',
            name: 'comparison',
            data: [
				<%for(int i = 0;i<univName.size();i++){%>
                ['<%=univName.get(i)%>',<%=univApplication.get(i)%>
		],
	<%}%>
		]
								} ]
							});
		});
	</script>


	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<script>
$(function () {

	 	$('#admission').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Admissions in University'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                },
                showInLegend: true

            }
        },
        series: [{
            type: 'pie',
            name: 'AdmissionComparison',
            data:[	<%for(int i = 0;i<univName.size();i++){%>

            	['<%=univName.get(i)%>',<%=univAdmission.get(i)%>],
            <%}%>
            ]
        }]
    });
});
    
</script>

	<div id="admission"
		style="min-width: 310px; height: 400px; margin: 0 "></div>
		
		
		 -->
		
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
</html>
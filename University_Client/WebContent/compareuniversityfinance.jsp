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
	<li ><a
		href="compareuniversitydetails.jsp">General</a></li>
	<li><a
		href="compareuniversityadmission.jsp">Admission</a></li>

	<li class="active"><a
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
<form name="form2" action="compareuniversity.jsp"> 
<div class="table-responsive">
  <table class="table">
  <tr>
   <th>
  University
  </th>
 
  
       <th>
Total Financial AId
  </th>

   <th>
Average FinancialAid
  </th>
 <th>
Total grant/scholarship
  </th>
         <th>
Average grant/scholarship

  </th>
         <th>
UG Students received FinancialAid
  </th>
      <th>
 Students received FinancialAid
  </th>


  </tr>
 <%
 //Service service = new Service();

 FinancialAidList resultList=(FinancialAidList)session.getAttribute("financialAidList");
HashMap<Integer,String> hmap =(HashMap<Integer,String>)session.getAttribute("hmap");
ArrayList univName = new ArrayList();
ArrayList totalAid = new ArrayList();

List<FinancialAid> financialAidList = null;

if (resultList != null) {
	financialAidList= resultList.getFinancialAidList();
}
  for (FinancialAid univ : financialAidList ) {
  if (hmap.containsKey(univ.getUNITID()))
  {
	    univName.add(hmap.get(univ.getUNITID()));
	    totalAid.add(univ.getUAGRNTT());
  %>
 <tr>

 <td>
 <%=hmap.get(univ.getUNITID())%> <br>
 </td>
 
 
 <td>
 <%=univ.getUAGRNTT().concat("$")%> <br> 
 </td>
 <td>
 <%=univ.getUAGRNTA().concat("$")%> <br>   
 </td>
    

  <td>
 <%=univ.getGISTT2().concat("$")%> <br>
     </td> <td>
 <%=univ.getGISTA2().concat("$")%> <br>
  </td>
 
  <td>
  <%=univ.getUAGRNTN()%> <br> 
 </td>

  <td>
 <%=univ.getSCUGFFP().concat("%")%> <br> 
 
 <%
  } }
 %>
  </td>
 
 </tr>  
 

  </table>
</div>
 <button type="submit" class="btn btn-default">Back To Comparison</button>
</form>
<script>
$(function () {
    $('#finance').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Total Financial Aid'
        },
        subtitle: {
            text: 'Source: National Center for Education Statistics'
        },
        xAxis: {
            categories: [ <%for(int i = 0;i<univName.size();i++){%>
            ['<%=univName.get(i)%>'],
            <%}%>
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Amount ($)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
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
            name: 'Financial Aid',
            data: [<%for(int i = 0;i<univName.size();i++){%>
                   
         	[<%=totalAid.get(i)%>],
            <%}%>
            ]
       }]
    });
});



</script>



	<div id="finance" style="min-width: 310px; height: 400px"></div>

<!--  

	<script>
$(function () {

	 	$('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Total FinancialAid  in University'
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

            	['<%=univName.get(i)%>',<%= totalAid.get(i)%>],
            <%}%>
            ]
        }]
    });
});  </script>
  


	<div id="container" style="min-width: 310px; height: 450px; margin: 0 auto"></div>
	
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
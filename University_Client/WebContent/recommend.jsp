<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.university.bean.*, com.university.Service.*, java.util.*" %>
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
<title>Recommend University</title>
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
<body>
	<!-- Header Code -->
<h1 align="center">Top 5 Recommended Universities</h1>
	<%
		Service service = new Service();
		String uEmail = (session.getAttribute("email")).toString();
		String myGre = (String) service.getGreScore(uEmail);
		String myToefl = (String) service.getToeflScore(uEmail);
		
		if (myGre==null || myToefl==null)
		{
			response.sendRedirect("error.jsp");			
		}
		else
		{
		int myUniv,univEnroll, univAppl;
		float admRatio;
		
		HashMap<String,Float> map = new HashMap<String,Float>();
        ValueComparator bvc =  new ValueComparator(map);
        TreeMap<String,Float> sorted_map = new TreeMap<String,Float>(bvc);
		
		System.out.println("GRE Score of user: " + myGre);	
		System.out.println("TOEFL Score of user: " + myToefl);

	    UnivProgramList resultList=(UnivProgramList)service.getUniversityReco(myGre,myToefl);
		System.out.println("Recommended University Object in JSP: "+resultList);
		
		List<UnivProgram> univRecoList = resultList.getUnivProgramList();
		
		for (UnivProgram reco : univRecoList) { 
			
			System.out.println("This university Id is : " +reco.getUNITID());
			univEnroll = Integer.parseInt(reco.getENRLT());
			System.out.println("My university Enrollment: " +univEnroll );
			univAppl = Integer.parseInt(reco.getAPPLCN());
			System.out.println("My university Application: " +univAppl );
			
			if(univAppl > 0 && univEnroll > 0){
				admRatio = (float)(univAppl/univEnroll);
				if(admRatio < 100)
				map.put(Integer.toString(reco.getUNITID()),admRatio);
			}
		}
		System.out.println("My Sorted MAP by Value: " +map);
		sorted_map.putAll(map);
		System.out.println("My Sorted MAP by Value: " +sorted_map);
//		for(int i=0;i<5;i++)
	    String myRecoList= (sorted_map.keySet()).toString();
        String myFinalUnivList = myRecoList.substring(1);
	    System.out.println("My List: " +myFinalUnivList);
	    
	    String[] myReco= myFinalUnivList.split(",");
	    
	%>
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
			
	<!-- Header Ends Here -->


		<form action="getDetailFromType" method="GET">
		<div class="table-responsive">
			<table class="table">
				<tr>
					<th>University Id</th>
					<th>University Name</th>
					<th>City</th>
					<th>State</th>
					<th>Private/Public</th>
					<th>WebAddress</th>
					<th>Details</th>
				</tr>

				
					<%
					if(myReco.length<6){
                        response.sendRedirect("noreco.jsp");
                 }
                        else{
					
              for (int j=0;j<5;j++) {             	  
            	  UniversityInfoListBean thisUniversityList = service.getUniversityInfoById(Integer.parseInt(myReco[j].trim())); 
            	  System.out.println("This University: "+thisUniversityList);
            	  
            	  UniversityInfoBean thisUniversity = thisUniversityList.getFirstObject();
			  %>
			  <tr>
					<td><%=thisUniversity.getUnitid()%></td>
					<td><%=thisUniversity.getInstnm()%></td>
					<td><%=thisUniversity.getCity()%></td>
					<td><%=thisUniversity.getStabbr()%></td>
					<td><%=thisUniversity.getControl()%></td>
 					<td>
					 <%String webAddress = "http://";
					 webAddress = (webAddress + thisUniversity.getWebaddr()).toLowerCase();
					 %>
					 <a href=" <%=webAddress%>" target="_blank">  <%=thisUniversity.getWebaddr()%> </a>
					 
					  <td>
						<td><button type="submit" class="btn btn-primary" name="univ_name" value="<%=thisUniversity.getInstnm()%>">Get Details</button>
					
					</td>
              </tr>
					<%
                 }
                  
                        
             }
					
		}
                 %>


				
			</table>
		</div>

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

	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
	<script src="lib/bootstrap.min.js"></script>

</body>
</html>


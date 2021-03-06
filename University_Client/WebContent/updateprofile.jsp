<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.university.bean.RegistrationBean"%>
<%@ page import='java.util.*,javax.servlet.http.HttpSession'%>
<%@ page import="com.university.bean.*"%>
<%@ page import="com.university.Service.Service"%>

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
<title>Home - Disha</title>
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />

<script src="lib/jquery-1.10.2.js"></script>
<script type="text/javascript" src="lib/jquery-ui.js"></script>
<script type="text/javascript" src="lib/jquery.ui.autocomplete.js" /></script>
<script type="text/javascript" src="lib/jquery.ui.core.js"></script>
<script type="text/javascript" src="lib/jquery.ui.position.js"></script>
<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<style type="text/css">
.ui-autocomplete {
	z-index: 1000;
}
</style>
<%
	Service service = new Service();
	String uEmail = (session.getAttribute("email")).toString();

	UserProfileBean userProfile = (UserProfileBean) service.getProfile(uEmail);
	RegistrationBean ui = (RegistrationBean) session.getAttribute("userName");

	String[] univInfoNameList = (String[]) request.getAttribute("univInfoNameList");
	String[] univStateList = (String[]) request.getAttribute("univStateList");
	String[] univBranchList = (String[]) request.getAttribute("univBranchList");
%>
<script type="text/javascript"> 
$(function() 
		    {
		    var univName = new Array();
		    <%for (int i = 0; i < univInfoNameList.length; i++) {%> univName[<%=i%>] = "<%=univInfoNameList[i]%>"; <%}%>
		    $("#univ_name").autocomplete({source: univName});
		    });
$(function() 
		    {
		    var branchName = new Array();
		    <%for (int i = 0; i < univBranchList.length; i++) {%> branchName[<%=i%>] = "<%=univBranchList[i]%>"; <%}%>		    
		    $("#branch_name").autocomplete({source: branchName});
		    });
$(function() 
		    {
		    var stateName = new Array();
		    <%for (int i = 0; i < univStateList.length; i++) {%> stateName[<%=i%>] = "<%=univStateList[i]%>";<%}%>
			$("#state_name").autocomplete({source : stateName});
			});
$(function() 
	    {
	    var branchName = new Array();
	    <%for (int i = 0; i < univBranchList.length; i++) {%> branchName[<%=i%>] = "<%=univBranchList[i]%>"; <%}%>		    
	    $("#majorfield").autocomplete({source: branchName});
	    });
</script>
<body>
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
					<a href="#" class="list-group-item active">Welcome <%=ui.getFIRSTNAME()%></a>
					<a href="profile" class="list-group-item"><span
						class="glyphicon glyphicon-user"> Profile</span></a>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active">Dashboard</a> <a
						href="recommend.jsp" class="list-group-item">Get
						Recommendation</a> 
						 <a href="CompareUniversity" class="list-group-item">Compare University</a> 


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
					<a href="#" class="list-group-item active">Service</a><a href="http://jforum.vaibhav28.cloudbees.net/"
						class="list-group-item">Forum</a>
				</div>

			</div>
			<form id="updateProfile" method="post" action="UpdateProfile">
				<div class="container">
					<div class="row">
						<div
							class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
																	<h3 align="center">Please enter details to update</h3>

										<table class="table table-striped">
										<tr>
										<td colspan="2"><b>First Name</b></td>
										<td colspan="2"><b>Last Name</b></td>
										</tr>
										
																				<tr>
										
<td colspan="2"><input type="text" name="firstname" id="firstname" value="<%=userProfile.getFIRSTNAME()%>"></td>
<td colspan="2"><input type="text" name="lastname" id="lastname" value="<%=userProfile.getLASTNAME()%>"></td>
<td></td>
<td></td>
</tr>

											<tr>
												<td colspan="4" style="text-align: center;"><button
														type="button" class="btn btn-default">
														<b>General Information</b>
													</button></td>
											</tr>
											<tr>
												<td><b>Email</b></td>
												<td><b>Phone No.</b></td>
												<td><b>Gender</b></td>
												<td></td>
											</tr>
											<tr>
												<td><input
													type="text" name="email" id="email"
													value="<%=(session.getAttribute("email")).toString()%>" readonly="readonly" ></td>
												<td>Phone No.</td>
												<td><input type="radio" name="sex" value="male"> Male 
<input type="radio" name="sex" value="female"> Female</td>
												<td></td>
											</tr>
											<tr>
												<td colspan="4" style="text-align: center;"><button
														type="button" class="btn btn-default">
														<b>Under-Graduation Details</b>
													</button></td>
											</tr>

											<tr>
												<td><b>College</b></td>
												<td><b>Branch</b></td>
												<td><b>Year</b></td>
												<td><b>GPA</b></td>
											</tr>
											<tr>
												<td><input
													type="text" name="ugradcollege" id="ugradcollege"
													value="<%=userProfile.getUGRADCOLLEGE()%>"></td>
												<td><input type="text"
													name="ugradbranch" id="ugradbranch"
													value="<%=userProfile.getUGRADBRANCH()%>"></td>
												<td><input type="text"
													name="ugradyear" id="ugradyear"
													value="<%=userProfile.getUGRADYEAR()%>"></td>
												<td><input type="text"
													name="ugradgpa" id="ugradgpa"
													value="<%=userProfile.getUGRADGPA()%>"></td>
											</tr>
											<tr>
												<td colspan="4" style="text-align: center;"><button
														type="button" class="btn btn-default">
														<b>Educational Details</b>
													</button></td>
											</tr>
											<tr>
												<td><b>Branch</b></td>
												<td><b>GRE Score</b></td>
												<td><b>TOEFL Score</b></td>
												<td></td>
											</tr>
											<tr>
												<td><div class="ui-widget" align="right">
												<input type="text"
													name="majorfield" id="majorfield"
													value="<%=userProfile.getMAJORFIELD()%>"></div></td>
												<td><input type="text"
													name="grescore" id="grescore"
													value="<%=userProfile.getGRESCORE()%>"></td>
												<td><input type="text"
													name="toeflscore" id="toeflscore"
													value="<%=userProfile.getTOEFLSCORE()%>"></td>
												<td></td>
											</tr>


											<tr>
												<td colspan="4" style="text-align: center;"><button
														type="button" class="btn btn-default">
														<b>Related Experience</b>
													</button></td>
											</tr>
											<tr>
												<td><b>Work Experience</b></td>
												<td><b>Feild of Work Experience</b></td>
												<td><b>Publication</b></td>
												<td></td>
											</tr>
											<tr>
												<td><input type="text"
													name="workex" id="workex"
													value="<%=userProfile.getWORKEX()%>"></td>
												<td><input type="text"
													name="workexfield" id="workexfield"
													value="<%=userProfile.getWORKEXFIELD()%>"></td>
												<td><input
													type="text" name="publications" id="publications"
													value="<%=userProfile.getPUBLICATIONS()%>"></td>
												<td></td>
											</tr>
											<tr>
												<td colspan="4" style="text-align: center;"><button
														type="button" class="btn btn-default">
														<b>Other Details</b>
													</button></td>
											</tr>
											<tr>
												<td><b>Visa Type</b></td>
												<td><b>Financial Aid</b></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td><input type="radio" name="visatype" value="F-1" > F-1 
<input type="radio" name="visatype" value="L-1" > L-1
<input type="radio" name="visatype" value="H-1" > H-1
<input type="radio" name="visatype" value="None" > None
												
												<td><input type="radio" name="financialaid" value="Yes" > Yes 
<input type="radio" name="financialaid" value="No"> No
												</td>
												<td></td>
												<td></td>
											</tr>

											<tr>
												<td colspan="4" style="text-align: center;"><button
														name="UpdateProfile" type="submit" value="Update_Profile"
														class="btn btn-primary">Update Profile</button></td>
											</tr>

										</table>
						</div>
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
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
<!-- Header Code -->

<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" />

<script src="lib/jquery-1.10.2.js"></script>

<script type="text/javascript" src="lib/jquery-ui.js"></script>

<script type="text/javascript" src="lib/jquery.ui.core.js"></script>

<script type="text/javascript" src="lib/jquery.ui.position.js"></script>

<script type="text/javascript" src="lib/jquery.ui.widget.js"></script>
</head>
<script>
	$(function() {
					$( "#city" ).autocomplete({
					source : function(request, response ) {
							$.ajax({
							url : "http://localhost:8080/pizzashop/getUniversity",
							dataType : "json",
							data : {
								maxRows : 6,
								startsWith : request.term
							},
							success : function(data) {
								response($.map(data.univInfoList, function(item) {
									return {
										label : item.instnm,
										value : item.instnm
									}
								}));
							}
						});
					},
					minLength : 1,
					open : function() {
						$(this).removeClass("ui-corner-all").addClass(
								"ui-corner-top");
					},
					close : function() {
						$(this).removeClass("ui-corner-top").addClass(
								"ui-corner-all");
					}
				});
	});
</script>

<body>
	<div class="demo">
		<div class="ui-widget">
			<label for="city">Search City: </label> <input id="city" />
		</div>
	</div>

<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 --><script src="lib/bootstrap.min.js"> </script>

</body>
</html>


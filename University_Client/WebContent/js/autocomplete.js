$(function() {
	$("#univName1").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
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

$(function() {
	$("#univName2").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
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

$(function() {
	$("#univName3").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
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

$(function() {
	$("#univName4").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
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

$(function() {
	$("#univName5").autocomplete({
		source : function(request, response) {
			$.ajax({
				url : "http://localhost:8080/pizzashop/getUniversity",
				dataType : "json",
				data : {
					maxRows : 6,
					startsWith : request.term
				},
				success : function(data) {
					console.log(data);
					response($.map(data.univInfoList, function(item) {
						return {
							label : "US " + item.stabbr + " - " + item.instnm,
							value : item.instnm
						}
					}));
				}
			});
		},
		minLength : 0,
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


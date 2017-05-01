<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="BD Details Page">
<meta name="author" content="yashx1@gmail.com">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
<script type="text/javascript">

	var cityMap = {};
		
	cityMap["NCR"] = ["Delhi" , "Ghaziabad", "Gurgaon", "Noida"];
	cityMap["KA"] = ["Bangalore", "Mysore"];
	cityMap["MA"] =  ["Mumbai", "Pune", "Nasik"];
	
	
	$(function(){
		
		$('#stateDropdown li a').click(function() {
			var html = "";
			var arr = cityMap[$(this).attr("name")];
					
			for (i in arr) {
			    html = html + "<li><a name='"+arr[i]+"' href=# >"+arr[i]+"</a></li>";
			}
			
			$( "#cityDropdown" ).empty();		
			$( "#cityDropdown" ).append(html);
		});
	 
		$('#cityDropdown').on('click', 'li', function () {
			var city = $(this).text();
			
				$.ajax({
		            url : "BDHandler",
		            data: "city="+city,
		            dataType : 'json',
		            error : function() {
		                alert("Something went wrong.");
		            },
		            success : function(data) {
		            	$("#bdTable").empty();
		            	
		            	html = "<thead><tr><th>#</th><th>Name</th><th>Phone No.</th><th>Email</th><th>Address</th><th>Status</th></tr></thead><tbody>"
		            	
		            	jQuery.each( data[0], function( i, obj ) {
		            		var k = i+1;
	
		            		html =html + "<tr><td>"+k+"</td><td>"+obj['name']+"</td><td>"+obj['contact']+"</td><td>"+obj['email']+"</td><td>"+obj['address']+"</td>";
							
		            		if(obj['active'] == true){
		            			html = html + "<td><span class='label label-success'>active</span></td>";
		            		}else{
		            			html = html + "<td><span class='label label-danger'>inactive</span></td>";
		            		}	            		
		            		
		            		html = html + '</tr>';
		            	});                	
		            	
		            	$("#bdTable").append(html);
		            }
		        });
		});	
	});

</script>



<title>Dashboard</title>

<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="./resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/css/dashboard.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only"><img src="./images/logo.png"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="dashboard">Lead Manager</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
						<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="dashboard">Dashboard</a></li>
					<li class="active"><a href="bddetails">BD Details <span class="sr-only">(current)</span></a></li>
					<li><a href="resources">Resources</a></li>
				</ul>
			</div>
			
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="row">
					<h1 class="page-header">BD Details</h1>
				  	<button type="button" class="btn btn-primary btn-xs" style="float: right;">+ Add New BD</button>
				</div>
								
				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder dropdown">
						  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    State
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="stateDropdown">
						    <li><a name="NCR" href="#" >NCR</a></li>
						    <li><a name="KA" href="#">Karnataka</a></li>
						    <li><a name="MA" href="#">Maharashtra</a></li>
						  </ul>
					</div>
					<div class="col-xs-6 col-sm-3 placeholder dropdown"></div>


					<div class="col-xs-6 col-sm-3 placeholder dropdown">
						  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" 
						  data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    City
						    <span class="caret"></span>
						  </button>
						  
						  <ul class='dropdown-menu' aria-labelledby='dropdownMenu2' id='cityDropdown'></ul>

					</div>



				</div>
			
				<div class="table-responsive">
					<table class="table table-striped" id="bdTable"></table>
				</div>
			</div>
		</div>
	</div>
	
	<script src="./resources/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="./resources/js/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="./resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

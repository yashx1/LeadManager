<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Resources Page">
<meta name="author" content="yashx1@gmail.com">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	


<title>Resources</title>

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
					<li><a href="bddetails">BD Details</a></li>
					<li class="active"><a href="resources">Resources <span class="sr-only">(current)</span></a></li>
				</ul>
			</div>
			
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Resources</h1>
				<div class="row placeholders">
				<br>
					<div class="col-xs-6 col-sm-6 placeholder dropdown">
						<h4 class="page-header">Presentations</h4>
						<br>
						<div><a href="./resources/docs/HR_PPT.ppt" target="_blank">PPT</a></div>
						<br>
						<div><a href="./resources/docs/HR_PPT.ppt" target="_blank">HR PPT</a></div>
						<br>
						<div><a href="./resources/docs/HR_PPT.ppt" target="_blank">NASSCOM PPT</a></div>
					</div>
					<div class="col-xs-6 col-sm-6 placeholder dropdown">
						<h4 class="page-header">Business Decks</h4>
						<br>
						<div><a href="./resources/docs/Analyst_Briefings.pdf" target="_blank">Analyst Briefings</a></div>
						<br>
						<div><a href="./resources/docs/annual_review.pdf" target="_blank">Annual Review</a></div>
						<br>
					</div>
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

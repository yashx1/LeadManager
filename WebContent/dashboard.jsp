<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Dashboard Page">
<meta name="author" content="yashx1@gmail.com">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
<title>Dashboard</title>

<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="./resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/css/dashboard.css" rel="stylesheet">
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/ie10-viewport-bug-workaround.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    <link href="./resources/marquee/css/jquerysctipttop.css" rel="stylesheet">
    <link href="./resources/marquee/css/simple.min.css" rel="stylesheet">
    
    
    <script src="./resources/marquee/js/jquery.marquee.js"></script>
    
<script type="text/javascript">
	$(function(){
		$('#marquee-vertical').marquee();  
	});
</script>
    
    
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
					<li class="active"><a href="dashboard">Dashboard <span class="sr-only">(current)</span></a></li>
					<li><a href="bddetails">BD Details</a></li>
					<li><a href="resources">Resources</a></li>
				</ul>
			</div>
			
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Dashboard</h1>
				
				
				
				
		<div class="block-hdnews" style="width:745px; margin:35px auto; background-color:#e95546;">

          <div class="list-wrpaaer" style="height: 380px; position: relative; overflow: hidden;">
             <ul class="list-aggregate" id="marquee-vertical" style="position: absolute; top: -190px; left: 0px; height: 1000%;">
               <li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 1</a>
                 <p>
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit.                
                 </p>
               </li>
               
               <li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 2</a>
                 <p>Aliquam consequat nibh in sollicitudin semper. Nam convallis sapien nisi, ac vulputate nisi auctor blandit. Donec tincidunt varius suscipit. </p>
               </li>
               
               <li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 3</a>
                 <p>Ut ut felis suscipit sem porta molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae/p&gt;
               </p></li>

               <li>
                <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/" title="">Breaking News 4</a>
                <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. </p>
               </li>

             <li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 1</a>
                 <p>
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit.                
                 </p>
               </li><li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 2</a>
                 <p>Aliquam consequat nibh in sollicitudin semper. Nam convallis sapien nisi, ac vulputate nisi auctor blandit. Donec tincidunt varius suscipit. </p>
               </li><li>
                 <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/">Breaking News 3</a>
                 <p>Ut ut felis suscipit sem porta molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae/p&gt;
               </p></li><li>
                <a href="http://www.jqueryscript.net/demo/Lightweight-jQuery-Content-Scroller-Plugin-marquee-js/" title="">Breaking News 4</a>
                <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. </p>
               </li></ul>
          </div>
      </div>
      
      
      
			</div>
		</div>		
	</div>
	

	
</body>
</html>

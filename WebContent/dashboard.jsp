<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Dashboard Page">
<meta name="author" content="yashx1@gmail.com">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<title>Dashboard</title>

<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="./resources/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./resources/css/dashboard.css" rel="stylesheet">
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/ie10-viewport-bug-workaround.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<link href="./resources/marquee/css/jquerysctipttop.css"
	rel="stylesheet">
<link href="./resources/marquee/css/simple.min.css" rel="stylesheet">


<script src="./resources/marquee/js/jquery.marquee.js"></script>

<script type="text/javascript">
	$(function() {
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
					<li class="active"><a href="dashboard">Dashboard <span
							class="sr-only">(current)</span></a></li>
					<li><a href="bddetails">BD Details</a></li>
					<li><a href="resources">Resources</a></li>
				</ul>
			</div>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Dashboard</h1>




				<div class="block-hdnews"
					style="width: 745px; margin: 35px auto; background-color: #1E90FF;">

					<div class="list-wrpaaer"
						style="height: 380px; position: relative; overflow: hidden;">
						<ul class="list-aggregate" id="marquee-vertical"
							style="position: absolute; top: -190px; left: 0px; height: 1000%;">
							<li><a
								href="http://economictimes.indiatimes.com/news/industry/tech/ites/lt-infotech-changes-names-to-lti/articleshow/58514403.cms"><h4>L&T
										Infotech rebrands itself as LTI.</h4></a>
								<p>Larsen & Toubro Infotech has changed its name to LTI. The
									company said that the core idea of the brand drives entire
									organization to design, innovate and invest in solutions that
									help clients accelerate digital transformation.</p></li>

							<li><a
								href="http://www.indiainfoline.com/article/equity-earnings-result-commentary/larsen-amp-toubro-infotech-q4fy17-standalone-net-profit-rises-3-8-qoq-estimates-mixed-117050400380_1.html"><h4>Larsen
										& Toubro Infotech Q4FY17 standalone net profit rises 3.8% qoq.</h4></a>
								<p>L&T Infotech's reported standalone results for the
									quarter came in mixed versus street estimates. Net profit for
									the quarter came in 4.1 % higher than the estimated figure of
									Rs. 235 crore.</p></li>

							<li><a
								href="http://www.forbesindia.com/article/special/sn-subrahmanyan-to-take-over-as-lt-md-and-ceo-on-july-1/46611/1"><h4>SN
										Subrahmanyan to take over as L&T MD and CEO on July 1.</h4></a>
								<p>A succession plan that had been put in motion at
									engineering conglomerate Larsen and Toubro (L&T) will culminate
									in SN Subrahmanyan taking over as the company’s chief executive
									officer and managing director on July 1. He will succeed AM
									Naik, L&T’s iconic leader who will hang up his boots after
									serving the company for five decades.</p></li>

							<li><a
								href="http://economictimes.indiatimes.com/news/industry/indl-goods/svs/engineering/lt-arm-wins-rs-5250-crore-order-from-qatar-firm/articleshow/58105814.cms"><h4>L&T
										arm wins Rs 5250-crore order from Qatar firm.</h4></a>
								<p>Engineering conglomerate Larsen & Toubro's construction
									arm has secured its single-biggest order worth Rs 5,250 crore
									from Qatar General Electricity and Water Corporation for power
									transmission and network expansion.The contract involves
									engineering, procurement and construction of 30 new gas
									insulated sub-stations of varying voltage levels of 220 kv, 132
									kv, and 66 kv, it added.</p></li>
							<li><a
								href="http://economictimes.indiatimes.com/news/industry/tech/ites/lt-infotech-changes-names-to-lti/articleshow/58514403.cms"><h4>L&T
										Infotech rebrands itself as LTI.</h4></a>
								<p>Larsen & Toubro Infotech has changed its name to LTI. The
									company said that the core idea of the brand drives entire
									organization to design, innovate and invest in solutions that
									help clients accelerate digital transformation.</p></li>

							<li><a
								href="http://www.indiainfoline.com/article/equity-earnings-result-commentary/larsen-amp-toubro-infotech-q4fy17-standalone-net-profit-rises-3-8-qoq-estimates-mixed-117050400380_1.html"><h4>Larsen
										& Toubro Infotech Q4FY17 standalone net profit rises 3.8% qoq.</h4></a>
								<p>L&T Infotech's reported standalone results for the
									quarter came in mixed versus street estimates. Net profit for
									the quarter came in 4.1 % higher than the estimated figure of
									Rs. 235 crore.</p></li>

							<li><a
								href="http://www.forbesindia.com/article/special/sn-subrahmanyan-to-take-over-as-lt-md-and-ceo-on-july-1/46611/1"><h4>SN
										Subrahmanyan to take over as L&T MD and CEO on July 1.</h4></a>
								<p>A succession plan that had been put in motion at
									engineering conglomerate Larsen and Toubro (L&T) will culminate
									in SN Subrahmanyan taking over as the company’s chief executive
									officer and managing director on July 1. He will succeed AM
									Naik, L&T’s iconic leader who will hang up his boots after
									serving the company for five decades.</p></li>

							<li><a
								href="http://economictimes.indiatimes.com/news/industry/indl-goods/svs/engineering/lt-arm-wins-rs-5250-crore-order-from-qatar-firm/articleshow/58105814.cms"><h4>L&T
										arm wins Rs 5250-crore order from Qatar firm.</h4></a>
								<p>Engineering conglomerate Larsen & Toubro's construction
									arm has secured its single-biggest order worth Rs 5,250 crore
									from Qatar General Electricity and Water Corporation for power
									transmission and network expansion.The contract involves
									engineering, procurement and construction of 30 new gas
									insulated sub-stations of varying voltage levels of 220 kv, 132
									kv, and 66 kv, it added.</p></li>



						</ul>
					</div>
				</div>



			</div>
		</div>
	</div>



</body>
</html>

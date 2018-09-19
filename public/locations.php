<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-110066838-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-110066838-1');
</script>
	 <title>Locations</title>
<meta name="keywords" content="childcare, child care, columbus ohio, columbus oh, early childhood education.">
	<meta name="description" content="Creative Child Care is a highly rated early educational childcare provider in the Columbus Ohio area.">

  <!--Load CSS Files -->
  <link rel="stylesheet" type="text/css" href="css/site.css">
  <link rel="stylesheet" type="text/css" href="css/center.css">
		<link rel="stylesheet" type="text/css" href="css/centerEast.css">
		<link rel="stylesheet" type="text/css" href="css/locations.css">

		<!--Load Google Fonts -->
		<?php
			include("new-webFonts.php")
		?>

		<!-- Load JS Files -->
		<?php
			include("js-files.php")
		?>

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<!-- Load Header -->
<?php
	include("header.php")
?>

<body>
<div id="ccc-body-container">
  <div class="clearfix"></div>
  <div class="eastCenter-header-wrapper header-wrapper">
    <div class="page-title">
      <h1>Locations</h1>
    </div>
  </div>

  <div class="clearfix"></div>

		<div class="content-wrapper">
		  <div class="top-wrapper">
				  <div class="takeTour">
						  <img src="/images/centers/takeTour-icon.png" />
								<h2>Where are We?</h2>
						</div>
				</div>

				<div class="clearfix"></div>

				<div class="map-wrapper">
					 <div class="locations-img-wrapper">
							 <img src="/images/centers/locations-map.png"/>
								<p class="googleBlurb">Google and the Google logo are registered trademarks of Google Inc., used with permission.</p>
						</div>
				</div>
				<div class="clearfix"></div>
				<div class='address-blurb'>
					<a class="locations-address-wrapper" href="centerEast.php">
						<h2>East Center</h2>
							<p>
								5831 Westbourne Ave.<br />
								Columbus, Ohio 43213<br />
								(614)-864-2424
							</p>
					</a>
					<a class="locations-address-wrapper" href="centerNorth.php">
						<h2>North Center</h2>
						<p>
							1601 Shanley Dr.<br />
							Columbus, Ohio 43224<br />
							(614)-261-8153
						</p>
					</a>
					<a class="locations-address-wrapper" href="centerSoutheast.php">
						<h2>Southeast Center</h2>
						<p>
							2525 Petzinger Rd.<br />
							Columbus, Ohio 43209<br />
							(614)-235-7979
						</p>
					</a>
					<a class="locations-address-wrapper" href="centerWest.php">
						<h2>West Center</h2>
						<p>
							485 Industrial Mile Rd.<br />
							Columbus, Ohio 43228<br />
							(614)-276-2737
						</p>
					</a>
				</div>

				<div class="clearfix"></div>

  </div>

		<div class="clearfix"></div>

		<!--Load Footer-->
			 <?php
						include("footer.php")
				?>
</div>
</body>
</html>

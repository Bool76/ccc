<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	 <title>Creative Child Care INC</title>

  <!--Load CSS Files -->
  <link rel="stylesheet" type="text/css" href="css/new-site.css">
  <link rel="stylesheet" type="text/css" href="css/new-index.css">
		<link rel="stylesheet" type="text/css" href="css/new-homeMarquees.css">

  <!--Load Google Fonts -->
  <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,700,200,100' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Julius+Sans+One" rel="stylesheet">

		<!-- Call the newest version of js on CCC -->
		<script src="/js/jquery-3.1.1.min.js"></script>

		<!-- Call the new marquee slider -->
		<script src="/js/slider.js"></script>

		<script type="text/javascript" src="/newSite/js/ccc-mobile-menu.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<!-- Load Header / Footer -->
	<script>
 		$(document).ready( function() {
     $("#header").load("header.html");
     $("#footer").load("footer.html");
   })
 </script>

<body>
<div id="ccc-body-container">
  <?php include '/header.php'; ?>

		   <div class="clearfix"></div>
					<div id="image-slider-wrapper">
						 <div class="slider">
							  <div class="slider-img one" id="1"/>
								   <div class="landingMarquee-message">
												Building your child's future... creatively.
											</div>
								 </div>
									<div class="slider-img two" id="2"/>
											<a id="jobs-marquee-applyNow" href="http://google.com">
													<p>
														Apply Now
													</p>
											</a>
											<div id="jobs-marquee-joinOur">
												<p>
													Join Our Team
												</p>
											</div>
											<div id="jobs-marquee-ourCompany-desktop">
													<p id="jobs-marquee-ourCompany-desktopCopy">
														Our <strong>company</strong> is looking for energetic, friendly, professionals with a passion for teaching
														and working  with young children.
													</p>
											</div>
											<div id="jobs-marquee-ourCompany-mobile">
												<p id="jobs-marquee-ourCompany-mobileCopy">
													Our <strong>company</strong> is looking for energetic, friendly, professionals with a passion for teaching
													and working  with young children.
												</p>
											</div>
								 </div>
									<div class="slider-img three" id="3"/>
								   <div class="stepUp-marquee-blueStar">
														<div class="stepUp-marquee-stepUpMessage">
																<h2><div class="largerLetter">S</div>tep <div class="largerLetter">U</div>p to <div class="largerLetter">Q</div>uality</h2>
																<p>
																		is Ohio's quality rating system administered by the Ohio Department of Education and
																		the Ohio Department of Job and Family Services.
																	</p>
														</div>
											</div>
											<div class="stepUp-marquee-redStar">
													<div class="stepUp-marquee-allCentersMessage">
															<h2><div class="largerLetter">A</div>ll <div class="largerLetter">F</div>our</h2>
															<p>
																	Creative Child Care centers are highly rated through Step-Up-To-Quality!
															</p>
													</div>
											</div>
											<a class="stepUp-cta" href="http://google.com" target="_blank">
													Learn More
											</a>
											<div class="stepUp-logo-container">
													<img src="/newSite/images/marquees/stepUpToQuality-logo.png" />
											</div>
								 </div>
						 </div>
							<div class="sliderControls">
								 <a href="#" class="previous" onclick="prev(); return false;"></a>
								 <a href="#" class="next" onclick="next(); return false;"></a>
							</div>
		   </div>
					<div class="clearfix"></div>
							<div id='blurb-1' class="text-container">
											<div class="blurb-content">
												 <h2>What makes us different</h2>
			          <p>
													  Creative Child Care's passion is to provide affordable, high quality early educational child care utilizing developmentally appropriate standards and age appropriate curriculum that will ensure school readiness for all children in our care as they develop and learn in a safe and nurturing environment. Recognizing the parent as the first teacher, our role is to offer support through recurrent communication with the family assuring each child is exposed to positive and enriching experiences during their time with us.
												 </p>
												 <a class='orange-cta' href='#'>Learn More</a>
											</div>
		     </div>
       <div id='blurb-2' class="text-container">
							  <div class="blurb-content">
										 <h2>Associated With</h2>
										 <p>
													Our expertise and participation in the Early Childhood Education Community and our knowledge of the Central Ohio Business Community makes us an asset to every child and parent we serve. Here are some of our partner organizations and programs:
										</p>
									</div>
       </div>
							<div id="associated-logos">
								 <a class="assoc-logo-container" href="http://www.earlychildhoodohio.org/sutq.stm" target="_blank">
										 <img src="/newSite/images/stepUpToQuality-logo-01.png" />
								 </a>
									<a class="assoc-logo-container" href="http://www.acf.hhs.gov/ohs" target="_blank">
									  <img src="/newSite/images/headStart-logo-01.png" />
									</a>
									<a class="assoc-logo-container" href="https://education.ohio.gov/" target="_blank">
									  <img src="/newSite/images/ohioDepartmentEd-logo-01.png" />
									</a>
									<a class="assoc-logo-container" href="https://www.bbb.org/" target="_blank">
									  <img src="/newSite/images/bbb-logo-01.png" />
									</a>
									<a class="assoc-logo-container" href="http://jfs.ohio.gov/ocs/" target="_blank">
										 <img src="/newSite/images/ohioDepartmentFam-logo-01.png" />
									</a>
									<a class="assoc-logo-container" href="https://www.osu.edu/" target="_blank">
										 <img src="/newSite/images/osu-logo-01.png" />
									</a>
							</div>
		     <div class="clearfix"></div>
			  <div id="footer"></div>
	 </div>
</body>
</html>

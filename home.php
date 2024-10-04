<?php
	include 'components/connect.php';

	if (isset($_COOKIE['user_id'])) {
		$user_id = $_COOKIE['user_id'];
	}else{
		$user_id = '';
	}
	
    include 'components/add_wishlist.php';
    include 'components/add_cart.php';
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- box icon cdn link -->
	<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" type="text/css" href="css/user_style.css?v=<?php echo time(); ?>">
	<title>FloSun - flower website home page</title>
</head>
<body>
	<?php include 'components/user_header.php';?>
	
    <!-----home slider section start------>
    <div class="slider-container">
    	<div class="container">
    		<div class="slider-item active">
    			<img src="image/slider.jpg">
    		</div>
    		<div class="slider-item">
    			<img src="image/slider.avif">
    		</div>
    		<div class="slider-item">
    			<img src="image/slider0.avif">
    		</div>
    		<div class="slider-item">
    			<img src="image/slider1.jpg">
    		</div>
    		<div class="slider-item">
    			<img src="image/slider2.jpg">
    		</div>
    	</div>
    	<div class="left-arrow" onclick="nextSlide()"><i class="bx bx-left-arrow-alt"></i></div>
    	<div class="right-arrow" onclick="prevSlide()"><i class="bx bx-right-arrow-alt"></i></div>
    </div>
    <!-----home slider section end------>

    <div class="services">
    	<div class="box-container">
    		<div class="box">
    			<div class="icon">
    				<img src="image/service.png">
    			</div>
    			<div class="detail">
    				<h4>online shopping</h4>
    				<span>100% secure</span>
    			</div>
    		</div>
    		<div class="box">
    			<div class="icon">
    				<img src="image/services2.png">
    			</div>
    			<div class="detail">
    				<h4>quality products</h4>
    				<span>100% secure</span>
    			</div>
    		</div>
    		<div class="box">
    			<div class="icon">
    				<img src="image/services.png">
    			</div>
    			<div class="detail">
    				<h4>delivery</h4>
    				<span>24 * 7 hours</span>
    			</div>
    		</div>
    		<div class="box">
    			<div class="icon">
    				<img src="image/services0.png">
    			</div>
    			<div class="detail">
    				<h4>customer services</h4>
    				<span>support girt services</span>
    			</div>
    		</div>
    		<div class="box">
    			<div class="icon">
    				<img src="image/service.png">
    			</div>
    			<div class="detail">
    				<h4>well organized</h4>
    				<span>24 * 7 free returns</span>
    			</div>
    		</div>
    		<div class="box">
    			<div class="icon">
    				<img src="image/services1.png">
    			</div>
    			<div class="detail">
    				<h4>much more</h4>
    				<span>100% secure</span>
    			</div>
    		</div>
    	</div>
    </div>
    <!-----service section end------>
    <img src="image/sub-banner0.jpg" class="sub-banner">

    <div class="frame-container">
    	<div class="box-container">
    		<div class="frame">
    			<div class="detail">
    				<span>shop seasonal</span>
    				<h2>50% off</h2>
    				<h1>all seasonal flowers</h1>
    				<a class="btn">shop now</a>
    			</div>
    		</div>
    		<div class="box">
    			<div class="box-detail">
    				<img src="image/frame.avif" class="img">
    				<div class="img-detail">
    					<span>wide range</span>
    					<h1>fresh organic flowers</h1>
    					<a class="btn">shop now</a>
    				</div>
    			</div>
    			<div class="box-detail">
    				<img src="image/frame2.webp" class="img">
    				<div class="img-detail">
    					<span>wide range</span>
    					<h1>fresh organic flowers</h1>
    					<a class="btn">shop now</a>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>

    <!-----frame section end------>
    <div class="about-us">
    	<div class="box-container">
    		<div class="img-box">
    			<img src="image/about.jpg" class="img">
    			<img src="image/about0.jpg" class="img1">
    			<div class="play"><i class="bx bx-play"></i></div>
    		</div>
    		<div class="box">
    			<div class="heading">
    				<span>why choose us</span>
    				<h1>why flosun flower website</h1>
    				<img src="image/separator.png">
    				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    				<a href="about-us.php" class="btn">know more</a>
    				<a href="contact.php" class="btn">contact us</a>
    			</div>
    		</div>
    	</div>
    </div>

    <!-----about section end------>
    <div class="sub-banner">
    	<div class="box-container">
    		<img src="image/sub-banner.png">
    		<img src="image/sub-banner.jpg" height="85%">
    	</div>
    </div>
    <!-----sub-banner section end------>
    <div class="categories">
    	<div class="heading">
    		<h1>categories features</h1>
    		<img src="image/separator.png">
    	</div>
    	<div class="box-container">
    		<div class="box">
    			<img src="image/features4.avif">
    			<div class="detail">
    				<span>fresh from farm</span>
    				<h1>bouquets</h1>
    				<a href="shop.php" class="btn">shop now</a>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/features2.avif">
    			<div class="detail">
    				<span>fresh from farm</span>
    				<h1>green plants</h1>
    				<a href="shop.php" class="btn">shop now</a>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/features0.jpg">
    			<div class="detail">
    				<span>fresh from farm</span>
    				<h1>wedding bouquets</h1>
    				<a href="shop.php" class="btn">shop now</a>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/features3.avif">
    			<div class="detail">
    				<span>fresh from farm</span>
    				<h1>green feijoas</h1>
    				<a href="shop.php" class="btn">shop now</a>
    			</div>
    		</div>
    	</div>
    </div>
    <!-----categories section end------>
    <div class="sub-banner">
    	<div class="box-container">
    		<img src="image/sub-banner2.avif">
    		<img src="image/sub-banner3.avif">
    	</div>
    </div>
    <!-----sub-banner section end------>
    <div class="offer">
    	<div class="heading">
    		<span>fresh from farm</span>
    		<h1>Buy any products from green organic @ get One free</h1>
    		<img src="image/separator.png">
    	</div>
    	<div class="box-container">
    		<div class="box">
    			<div class="detail">
    				<h1>fresh tulips</h1>
	    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
	    			<a href="shop.php" class="btn">shop now</a>
    			</div>
    			<img src="image/categories.avif">
    		</div>
    		<div class="box">
    			<div class="detail">
    				<h1>fresh roses</h1>
	    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
	    			<a href="shop.php" class="btn">shop now</a>
    			</div>
    			<img src="image/categories.jpg">
    		</div>
    		<div class="box">
    			<div class="detail">
    				<h1>fresh sunflower</h1>
	    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
	    			<a href="shop.php" class="btn">shop now</a>
    			</div>
    			<img src="image/categories2.jpg">
    		</div>
    		<div class="box">
    			<div class="detail">
    				<h1>fresh levender</h1>
	    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
	    			<a href="shop.php" class="btn">shop now</a>
    			</div>
    			<img src="image/categories1.avif">
    		</div>
    	</div>
    </div>
    <!-----offer section end------>
    <div class="offer-1">
    	<div class="detail">
    		<h1>special discount for all <br> flowers products</h1>
    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum vitae sem at porta. Vivamus pretium sapien libero, eu iaculis mauris egestas ut. Nullam sit amet mauris malesuada, ultrices nisi non, congue lectus. Sed ipsum sem, dapibus eu enim vitae, sodales maximus neque. Donec ligula orci, luctus vitae nisl eget, gravida viverra nibh. Suspendisse posuere nulla dolor, a efficitur ligula imperdiet vitae. Nullam consequat est pellentesque, tincidunt nisl in, gravida augue. Etiam mauris nisl, dictum eu metus at, consectetur iaculis dolor.</p>
    		<div class="container">
    			<div id="countdown" style="color:#fff;">
    				<ul>
    					<li><span id="days"></span>days</li>
    					<li><span id="hours"></span>hours</li>
    					<li><span id="minutes"></span>minutes</li>
    					<li><span id="seconds"></span>seconds</li>
    				</ul>
    			</div>
    		</div>
    		<a href="shop.php" class="btn">buy now</a>
    	</div>
    </div>

    <!-----offer-1 section end------>
    <div class="products">
    	<div class="heading">
    		<h1>our latest products</h1>
    		<img src="image/separator.png">
    	</div>
        <?php include 'components/shop.php'; ?>
    </div>
    <!-----products section end------>
    <div class="offer-2">
    	<div class="detail">
    		<h1>We Pride Ourselves On <br> Exceptional Flowers design.</h1>
    		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vestibulum tempor hendrerit. Ut accumsan, libero id bibendum commodo, ante diam dignissim nisi, non dignissim tellus ex sed nibh. Suspendisse potenti. Vestibulum eros ligula, volutpat a malesuada nec, ullamcorper at odio. Integer congue nisl mauris, non dignissim nibh efficitur eu. Nam ullamcorper blandit efficitur. Sed sed faucibus lectus.</p>
    		<a href="shop.php" class="btn">shop now</a>
    	</div>
    </div>
    <!-----offer-2 section end------>
    <div class="gurantee">
    	<div class="heading">
    		<h1>our gurantee</h1>
    		<p>Integer quis tempor orci. Suspendise potenti. Interdum et malesuada fames ac ante upsum primis in faucibus.</p>
    		<img src="image/separator.png">
    	</div>
    	<div class="box-container">
    		<div class="box">
    			<img src="image/service0.jpg">
    			<div class="detail">
    				<h1>events</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/service.avif" style="height: 18rem;">
    			<div class="detail">
    				<h1>delivery</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/service3.avif">
    			<div class="detail">
    				<h1>interior florist</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/service1.avif">
    			<div class="detail">
    				<h1>exterior florist</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/service.jpg">
    			<div class="detail">
    				<h1>hospitality</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="image/service2.jpg">
    			<div class="detail">
    				<h1>wedding planner</h1>
    				<p>We create healthy artisan loose leaf teas, bath and body products, and infused sugars in samll batches to ensure quality and freshness.</p>
    			</div>
    		</div>
    	</div>
    </div>





    <!-----gurentee section end------>







	<?php include 'components/user_footer.php';?>
	<!-- sweetalert cdn link -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<!-- custom js link -->
	<script type="text/javascript" src="js/user_script.js"></script>
	<!-- alert -->
	<?php include 'components/alert.php';?>
</body>
</html>


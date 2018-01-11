<!DOCTYPE html>
<html>
<head>
	<meta charset = "utf-8">
	
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style2.css">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:10,
		animSpeed:500,
		pauseTime:2200,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

</head>
<body>

<div class="headersection templete clear"> 
		<div class="logo">
			<img src="image/logo.png" alt="Logo"/>
			<h2> Online Quiz Test</h2>
			<p style="color:blue; margin: 170px 0px 0px 300px;"> 
				<?php 
					date_default_timezone_set("Asia/Dhaka"); 
					echo "Server-time:  " .date("l");
					echo " " .date("Y-m-d h:i a");
				?> 
			</p>
		</div>
	</div>
	
	<div class="slidersection templete clear">
		<div id="slider">
            <a href="#"><img src="image/slideshow/01.jpg" alt="nature 1" title="This is sider one."/></a>
            <a href="#"><img src="image/slideshow/03.jpg" alt="nature 3" title="This is sider two."/></a>
            <a href="#"><img src="image/slideshow/04.jpg" alt="nature 4" title="This is sider three."/></a>
        </div>
	</div>


</body>
</html>
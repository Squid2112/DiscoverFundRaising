var maxCoupon=3;
var curCoupon=1;

$(document).ready(function() {

	Shadowbox.init({
		title:"Request Information Now",
		skipSetup:false,
		overlayOpacity:0.4
	});

	jwplayer('mediaplayer').setup({
		flashplayer:'/assets/swf/player.swf',
		file:'/assets/vid/video.mp4',
		image:'/assets/img/video-preview.jpg',
		width:266,
		height:187,
//		skin:'/assets/skins/sun.zip',
		controlbar:'over',
		controlbar:{idlehide:true}
	});

	$("a.yellow-btn").each(function() {
		if($(this).attr("id") != undefined) {
			var tmp = this;
			$("img#" + $(this).attr("id")).click(function() {
				window.location.href = $(tmp).attr("href");
			});
			$("div#" + $(this).attr("id")).click(function() {
				window.location.href = $(tmp).attr("href");
			});
		}
	});

	$('div.coupons').html($('div#coupon1').html());
	$.doTimeout(4000, function(){
		$('div.coupons').html($('div#coupon'+curCoupon).html());
		curCoupon = (curCoupon < maxCoupon) ? curCoupon+1 : 1;
		return(true);
	});

/*	$("img#request-information").click(function() {
		Shadowbox.open({
			content:"/assets/forms/learnmore/index.cfm",
			player:"html",
			title:"Welcome",
			height:350,
			width:350
    });
	}); */

});

$(document).ready(function() {
	var sw=0;
	var cw=$("div#navigation").innerWidth();
	var cnt=0;

	$.each($("div#navigation li"), function(index,value) { sw += $(this).width(); cnt++; });
	$.each($("div#navigation li"), function(index,value) { $(this).width($(this).width()+(Math.floor((cw-sw)/cnt)-13)); });
});
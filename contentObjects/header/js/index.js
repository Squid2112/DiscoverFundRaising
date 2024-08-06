$(document).ready(function() {
	$('div#chat-balloon').click(function() {
		alert('plug in chat application here!');
	});

	$("img#btnLogin").hover(function(){$(this).attr("src","/assets/img/btnLogin_on.png");},function(){$(this).attr("src","/assets/img/btnLogin_off.png");});
	$("img#btnSignup").hover(function(){$(this).attr("src","/assets/img/btnSignup_on.png");},function(){$(this).attr("src","/assets/img/btnSignup_off.png");});

	$('img#btnSignup').click(function() {
		if(($('input#txtEmail').val().length && $('input#txtPass').val().length) && ($('input#txtEmail') != 'eMail address') && ($('input#txtPass').val() != 'password')) {
			var data = { method:'doSignup',email:$('input#txtEmail').val(),pass:$('input#txtPass').val() };
			$.ajax({
				type:'post',
				cache:false,
				dataType:'json',
				data:data,
				url:'/com/Ajax/VisitorAjax.cfc',
				success: function(data,textStatus,httpRequest) {
					if(data.STATUS == 'ok') {
						$('input#txtEmail').val('eMail address');
						$('input#txtPass').val('password');
					} else {
						alert('a problem!');
					}
					console.log(data);
					alert(data.STATUS);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					var result = { XMLHttpRequest:XMLHttpRequest, textStatus:textStatus, errorThrown:errorThrown };
					alert('I am sorry,\nthere was an error, not sure what it was, but probably not good...');
				}
			});
		} else {
			alert('must include both your email and your password!');
		}
	});

	$('img#btnLogin').click(function() {
		if(($('input#txtEmail').val().length && $('input#txtPass').val().length) && ($('input#txtEmail') != 'eMail address') && ($('input#txtPass').val() != 'password')) {
			var data = { method:'doLogin',email:$('input#txtEmail').val(),pass:$('input#txtPass').val() };
			$.ajax({
				type:'post',
				cache:false,
				dataType:'json',
				data:data,
				url:'/com/Ajax/VisitorAjax.cfc',
				success: function(data,textStatus,httpRequest) {
					if(data.STATUS == 'ok') {
						$('input#txtEmail').val('eMail address');
						$('input#txtPass').val('password');
					} else {
						alert('invalid login!');
					}
					console.log(data);
					alert(data.STATUS);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown) {
					var result = { XMLHttpRequest:XMLHttpRequest, textStatus:textStatus, errorThrown:errorThrown };
					alert('I am sorry,\nthere was an error, not sure what it was, but probably not good...');
				}
			});
		} else {
			alert('must include both your email and your password!');
		}
	});

	$('input#txtEmail').focus(function() {
		if($(this).val() == 'eMail address') $(this).val('');
	});

	$('input#txtEmail').blur(function() {
		if($(this).val() == '') $(this).val('eMail address');
	});

	$('input#txtPass').focus(function() {
		if($(this).val() == 'password') $(this).val('');
	});

	$('input#txtPass').blur(function() {
		if($(this).val() == '') $(this).val('password');
	});

});
component displayname="VisitorAjaxComponent" hint="Component for visitor ajax requests" output="false" {

	remote json function encodedJsonTest(required string data) output="true" returnformat="JSON" {
		var result = { status="ok" };

//		Application.Mail.send(to="hostmaster@thixo.net",subject="visitor Ajax test",obj=deserializeJson(Application.System.fromHexTrig(Arguments.data)));
return(Arguments);
		return(serializeJson(result));
	}


	remote string function ping() output='true' returnformat='plain' {
		var result = { status='ok' };
		return(serializeJson(result));
	}


	remote string function doLogin(required string email, required string pass) output='true' returnformat='plain' {
		var result = { status='er', email=Arguments.email, pass=Arguments.pass };
		return(serializeJson(result));
	}


	remote string function doSignup(required string email, required string pass) output='true' returnformat='plain' {
		var result = { status='er', email=Arguments.email, pass=Arguments.pass };
		return(serializeJson(result));
	}

	public string function OnMissingMethod(required string MissingMethodName, required struct MissingMethodArguments) output="true" returnformat="plain" {
		if(Application.Settings.isMailAvailable) Application.Mail.send(to=Application.Settings.emailLists.Errors,subject="[#Application.Settings.serverId#] Missing Method Error",msg="There was a Missing Method error [#cgi.SERVER_NAME#]",obj=Arguments);
	}

}
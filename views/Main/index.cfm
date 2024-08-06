<div class="innerMain">
	<div class="header">
		<cfset Application.Content.object(Request=Request,name='header')>
	</div>

	<div class="mainBody">
		<cfset Application.Content.childView(Request=Request)>
	</div>

	<div class="footer">
		<cfset Application.Content.object(Request=Request,name='footer')>
	</div>
</div>
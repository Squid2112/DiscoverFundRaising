<cfscript>
	coupons = directoryList(Application.Settings.rootPath & "\assets\hp-coupons\",false,"name");
	count = arrayLen(coupons);

	writeOutput('<div class="hp-coupons">');
	for(i=1; i <= count; i++) {
		writeOutput('<div id="coupon' & i & '">');
		try {
			cont = fileRead(Application.Settings.rootPath & "\assets\hp-coupons\" & coupons[i] & "\index.cfm"); 
			writeOutput(cont);
		} catch(Any e) {
		}
		writeOutput('</div>');
	}
	writeOutput("</div>");
</cfscript>
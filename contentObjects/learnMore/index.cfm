<cfscript>
	if(structKeyExists(Request,"learnMore")) {
		variables.learnMore = structNew();
		variables.learnMore.items = structKeyExists(Request.learnMore,"items") ? Request.learnMore.items : "";
		variables.learnMore.cols = structKeyExists(Request.learnMore,"cols") ? Request.learnMore.cols : 0;
		variables.learnMore.path = replaceNoCase(GetCurrentTemplatePath(),"index.cfm","");
		variables.learnMore.includePath = replaceNoCase(variables.learnMore.path,Application.Settings.rootPath,"");
		variables.learnMore.includePath = "/" & replace(variables.learnMore.includePath,"\","/","ALL");
		variables.learnMore.column = 1;

		for(variables.learnMore.i=1; variables.learnMore.i <= listLen(variables.learnMore.items); variables.learnMore.i++) {
			if(fileExists(variables.learnMore.path & listGetAt(variables.learnMore.items,variables.learnMore.i) & "\index.cfm")) {
				variables.learnMore.file = variables.learnMore.includePath & listGetAt(variables.learnMore.items,variables.learnMore.i) & "/index.cfm";
				if((variables.learnMore.column mod variables.learnMore.cols) == 0) {
					writeOutput('<div class="purple-box float-right">');
				} else {
					writeOutput('<div class="purple-box float-left">');
				}
				Application.System.include(variables.learnMore.file);
				writeOutput("</div>");
				if((variables.learnMore.column mod variables.learnMore.cols) == 0) writeOutput('<div class="clear"></div>');
				variables.learnMore.column++;
			}
		}
	}
</cfscript>
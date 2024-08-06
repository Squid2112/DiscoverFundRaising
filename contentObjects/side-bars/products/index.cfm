<cfscript>
//	if(!structKeyExists(Application,"productMenu")) {
		Application.productMenu = [
			new com.catalog.product(title="Ideas",uri="fundraising-ideas"),
			new com.catalog.product(title="Quick Sellers",uri="fundraising-quick-sellers"),
			new com.catalog.product(title="Products",uri="fundraising-products"),
			[
				new com.catalog.book(title="Coupon Book",uri="fundraising-products-coupon-book"),
				new com.catalog.card(title="Discount Card",uri="fundraising-products-discount-card"),
				new com.catalog.card(title="Scratch Card",uri="fundraising-products-scratch-card")
			],
			new com.catalog.product(title="Food",uri="fundraising-food"),
			[
				new com.catalog.food(title="Cookie Dough",uri="fundraising-food-cookie-dough"),
				new com.catalog.food(title="Pizza, Pretzels, Pies",uri="fundraising-food-pizza-pretzels-pies"),
				new com.catalog.food(title="Candy &amp; Snacks",uri="fundraising-food-candy-snacks"),
				new com.catalog.food(title="Lollipops",uri="fundraising-food-lollipops"),
				new com.catalog.food(title="Beef Jerkey",uri="fundraising-food-beef-jerkey")
			],
			new com.catalog.item(title="Specialty Items",uri="fundraising-food-specialty-items"),
			[
				new com.catalog.specialty(title="Trash Bags",uri="fundraising-food-specialty-items-trash-bags"),
				new com.catalog.specialty(title="Candles",uri="fundraising-food-specialty-items-candles"),
				new com.catalog.specialty(title="Flower Bulbs",uri="fundraising-food-specialty-items-flower-bulbs"),
				new com.catalog.specialty(title="Magazines",uri="fundraising-food-specialty-items-magazines"),
				new com.catalog.specialty(title="Jewelry",uri="fundraising-food-specialty-items-jewelry"),
				new com.catalog.specialty(title="Sniffy Pencils &amp; Pens",uri="fundraising-food-specialty-items-sniffy-penciles-pens")
			],
			new com.catalog.product(title="Catalogs",uri="fundraising-catalogs"),
			new com.catalog.product(title="Tools",uri="fundraising-tools"),
			[
				new com.catalog.tool(title="Forms &amp; Print Outs",uri="fundraising-tools-forms-print-outs"),
				new com.catalog.tool(title="FAQ",uri="fundraising-tools-frequently-asked-questions"),
				new com.catalog.tool(title="About Us",uri="fundraising-tools-about-us"),
				new com.catalog.tool(title="Reviews Blog",uri="fundraising-tools-reviews-blog"),
				new com.catalog.tool(title="Testimonials",uri="fundraising-tools-testimonials"),
				new com.catalog.tool(title="Get FREE Shipping",uri="fundraising-tools-get-free-shipping"),
				new com.catalog.tool(title="Low Price Guarantee",uri="fundraising-tools-low-price-guarantee")
			]	
		];
//	}
</cfscript>

<div id="left-navigation">
	<cfset Application.Content.object(Request=Request,name="side-bars/free-sample-kit")>	
	
	<cfscript>
		writeOutput("<ul>");
		for(idx1=1; idx1 <= arrayLen(Application.productMenu); idx1++) {
			if(isArray(Application.productMenu[idx1])) {
				for(idx2=1; idx2 <= arrayLen(Application.productMenu[idx1]); idx2++) {
					writeOutput('<li><a href="');
					writeOutput(Application.productMenu[idx1][idx2].uri);
					writeOutput('">');
					writeOutput(Application.productMenu[idx1][idx2].title);
					writeOutput('</a></li>');
				}
			} else {
				writeOutput('<li class="header"><a href="');
				writeOutput(Application.productMenu[idx1].uri);
				writeOutput('">');
				writeOutput(Application.productMenu[idx1].title);
				writeOutput('</a></li>');
			}
		}
		writeOutput("</ul>");
	</cfscript>
</div>
<cfscript>
	Application.System.js(request=request,filename="!js/jwplayer.js");
	Application.System.js(request=request,filename="!js/shadowbox-3.0.3/shadowbox.js");
	Application.System.css(request=request,filename="js/shadowbox-3.0.3/shadowbox.css");

	Application.Content.object(Request=Request,name="hp-coupons");
</cfscript>

<div id="top">
  <div class="coupons"></div>
  <div class="hp-player"><div id="mediaplayer"></div></div>
  <div class="clear"></div>
</div>

<div id="page">
  <div id="row-2">
    <div id="row-2-left">
	    <h1>Discover a Difference in Fundraising!</h1>
  	  <p>Since 1984, our team of fundraising experts have been helping groups just like yours raise Millions of dollars for <strong>Schools, PTA's, PTO's Youth Sports Leagues, Faith Based, Day Cares, Sports Teams and other Non Profit Organizations</strong>.</p>
	    <p>We understand your success is measured by reaching your <span style="font-weight:bold; color:#03afef;">PROFIT GOAL</span>, finding the right quality product for your group to sell and engaging with a company that can help make your fundraising experience <span style="font-weight:bold; color:#ec1018;">Fast, Easy &amp; Profitable</span>.</p> 
    
  	  <p>Discover our <span style="font-weight:bold; color:#03afef;">"Double" Guarantee</span> for your Success! <strong>Call Today 866-253-5972</strong></p>
    	<ul class="checkmark">
				<li>Discover our Make More Money Guarantee</li>
				<li>Discover Exclusive Fundraising Campaign SmartTools&trade; for your success </li>
				<li>Discover a Variety High Quality Products to Choose From </li>
				<li>Discover a Service Team of Fundraising Experts Helping through the entire process</li>
	    </ul>
		</div>
    
    <div id="row-2-right"><a href="/assets/forms/learnmore/" rel="shadowbox;width=700;height=400" title="Request Information Now!"><img id="request-information" src="/assets/img/request-information-now.png" width="312" height="230" alt="Request Information Now" /></a></div>
    
    <div class="clear"></div>
  </div>
  
  <div id="row-3">
  	<div id="row-3-left">
    	<table width="100%" border="0" cellpadding="0">
				<tr valign="bottom" height="74">
					<td><img src="/assets/img/icon-bus.jpg" width="66" height="61" alt="School Fundraising" id="school" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-ball.jpg" width="66" height="61" alt="Sports Fundraising" id="sports" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-church.png" width="67" height="74" alt="Church Fundraising" id="church" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-globe.jpg" width="67" height="74" alt="Non-Profit Fundraising" id="non-profit" style="cursor:pointer;" /></td>
				</tr>
				<tr>
					<td>
						<div class="fundraising-text" id="school" style="cursor:pointer;">
							<span class="red-bold">School</span><br />
							Fundraising<br />
							<a href="/School-Fundraising" id="school" class="yellow-btn">Learn More</span></a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="sports" style="cursor:pointer;">
							<span class="red-bold">Sports</span><br />
							Fundraising<br />
							<a href="/Sports-Fundraising" id="sports" class="yellow-btn">Learn More</a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="church" style="cursor:pointer;">
							<span class="red-bold">Church</span><br />
							Fundraising<br />
							<a href="/Church-Fundraising" id="church" class="yellow-btn">Learn More</a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="non-profit" style="cursor:pointer;">
						<span class="red-bold">Non-Profit</span><br />
						Fundraising<br />
						<a href="/Non-Profit-Fundraising" id="non-profit" class="yellow-btn">Learn More</a>
						</div>
					</td>
				</tr>
			</table>
    </div>
    
    <div id="row-3-right">
			<table width="100%" border="0" cellpadding="0">
				<tr valign="bottom" height="74">
					<td><img src="/assets/img/icon-pig.jpg" width="67" height="68" alt="Pig" id="highest-profit" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-dollar-sign.jpg" width="52" height="68" alt="soccer ball" id="no-costs" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-megaphone.jpg" width="52" height="68" alt="church" id="featured" style="cursor:pointer;" /></td>
					<td><img src="/assets/img/icon-clock.jpg" width="52" height="68" alt="globe" id="easiest" style="cursor:pointer;" /></td>
				</tr>
				<tr>
					<td>
						<div class="fundraising-text" id="highest-profit" style="cursor:pointer;">
							Highest<br />
							<span class="red-bold">Profit</span><br />
							<a href="/Highest-Profit-Fundraising" id="highest-profit" class="yellow-btn">Learn More</span></a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="no-costs" style="cursor:pointer;">
							<span class="red-bold">No</span> Up Front<br />
							<span class="red-bold">Costs</span><br />
							<a href="/No-Up-Front-Costs" id="no-costs" class="yellow-btn">Learn More</a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="featured" style="cursor:pointer;">
							<span class="red-bold">Featured</span><br />
							Fundraiser<br />
							<a href="/Featured-Fundraiser" id="featured" class="yellow-btn">Learn More</a>
						</div>
					</td>
					<td>
						<div class="fundraising-text" id="easiest" style="cursor:pointer;">
							<span class="red-bold">Easiest</span><br />
							to sell<br />
							<a href="/Easiest-To-Sell" id="easiest" class="yellow-btn">Learn More</a>
						</div>
					</td>
				</tr>
			</table>
    </div>
	</div>
  <div class="clear"></div>
    
  <div id="row-4">
	  <p class="learnmore-title">Learn More About Discover Indy Fundraising Products!</p>
		<cfscript>
			Request.learnMore = { cols=3, items="DiscountCard-CouponBook,CookieDough,Food-Pizza-Pies-Pretzels,Cand-Snacks,Candy-Snacks,Specialty,Catalogs-Brochure" };
			Application.Content.Object(Request=Request,name="learnMore");
		</cfscript>
  </div>
  <div class="clear"></div>
  
  <div id="row-5">
  
  	<div class="left">
    	<div class="text" style="padding-right:20px;">
      	<h3>Your Success<br />
				Depends On It!</h3>
        <ul class="checkmark" style="margin-left:20px;">
        <li>"Super Event" Party</li>
        <li>Individual Prizes</li>
        <li>Cash &amp; Gift Card Prizes</li>
        <li>Custom Sportswear Prize Program</li>
        </ul>
    	</div>   
    </div>
    
    <div class="left">
    	<div class="text" style="padding:0 20px;">
      	<h3>Get FREE Stuff!</h3>
        <ul>
        <li>Enter Your Group to win "Double Dollars" </li>
        <li>Get a Free Fundraising "Success Guide" </li>
        <li>Discover Valuable E-Tips Newsletter</li>
        <li>Request a Fundraising Sample Kit</li>
        </ul>

    	</div>   
    </div>
    
    <div class="left">
    	<div class="text" style="padding:0 20px;">
      	<h3>Profit Calculator</h3>
        <ul>
        <li>Discover our High Profit<br />
        <strong>GUARANTEE</strong>!</li>
        <li>Find out how much <strong>MONEY</strong><br />
        you can make</li>
        </ul>
    	</div>   
    </div>
    
    <div class="right">
   	 <div class="text" style="padding:0 20px;">
      	<h3>Testimonials</h3>
        <ul>
        <li>Review customer likes about Discover Fundraising</li>
        <li>Review Customer Success Stories</li>
        <li>Get Great Ideas from Groups like Yours</li>
        <li>Learn how we "Doubled Dollars"</li>
        </ul>
    	</div>   
    </div>
  <div class="clear"></div>
  </div><!-- end row 5 -->

  
  <div id="row-6">
    <div class="left"><img src="/assets/img/program-1.jpg" width="204" height="275" /></div>
    <div class="left"><img src="/assets/img/program-4.jpg" width="204" height="275" /></div>
    <div class="left"><img src="/assets/img/program-2.jpg" width="204" height="275" /></div>
    <div class="right"><img src="/assets/img/program-3.jpg" width="204" height="275" /></div>
    
  <div class="clear"></div>
  </div><!-- row-6 -->
 
 </div>
  
<!--- footer --->
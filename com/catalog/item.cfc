component displayname="item" hint="Fundraising item object" output=false {
	
	public any function init(required string title, string uri="") ouput=false {
		this.category = "";
		this.title = Arguments.title;
		this.uri = Arguments.uri;
		this.retailPrice = 0.0;
		this.pricePoint = 0.0;
		this.offItems = 0;
		this.bestTimeOfYear = "";
		this.recommendedCombination = "";
		this.primaryIcon = "";

		return(this);
	}

}
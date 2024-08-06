component displayname="product" hint="Fundraising product object" output=false extends="com.catalog.item" {

	public any function init(required string title) output=false {
		super.init(argumentCollection=Arguments);

		this.details = "";
		
		for(var item IN Arguments) if(item != "title") this[item] = Arguments[item];
		return(this);
	}

}
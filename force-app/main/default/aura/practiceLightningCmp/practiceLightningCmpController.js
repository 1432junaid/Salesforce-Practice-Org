({
	getString : function(cmp, event, helper) {
		var target = event.getSource();
        var msg = cmp.get("v.message");
        cmp.set("v.favcolors",msg)
    //    cmp.set("v.text",target.get("v.lable"));
    //    cmp.set("v.message","Junaid");
	},

    directLoad : function(cmp, event) {
        var load = "Page Loaded";
        cmp.set("v.favcolors", load);
    }
})
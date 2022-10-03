({
	myAction : function(comp, event, helper) {
        var accountinfo = comp.get("c.getAccount");
		
        accountinfo.setCallback(this,function(response) {               
          //  alert(response.getReturnValue());
                comp.set("v.acc", response.getReturnValue());           
        });
        $A.enqueueAction(accountinfo);
        
    },
    save : function(button, event, helper) {
        var accountinfo = comp.get("c.getAccount");
		
        accountinfo.setCallback(this,function(response) {               
            alert(response.getReturnValue());
                comp.set("v.acc", response.getReturnValue());           
        });
        $A.enqueueAction(accountinfo);
        

     	},
    
  	storeSelectedRows : function(cmp, event) {
    	var capturedCheckboxName = event.getSource().get("v.value");
    	var selectedCheckBoxes =  cmp.get("v.selectedCheckBoxes");
//        alert(selectedCheckBoxes);
   			 if(selectedCheckBoxes.indexOf(capturedCheckboxName) > -1){            
       			 selectedCheckBoxes.splice(selectedCheckBoxes.indexOf(capturedCheckboxName), 1);           
   			 }	
    		else{
        			selectedCheckBoxes.push(capturedCheckboxName);
   			 }
   			 cmp.set("v.selectedCheckBoxes", selectedCheckBoxes);    
    },

    Delete : function(cmp, event) {
        var getcmp = cmp.get("v.selectedCheckBoxes");
         var accountinfo = cmp.get("c.abc");
        
        accountinfo.setParams({
            "abcid" :  getcmp
        });

//		accountinfo.setCallback(this,function(response) {               
  //          alert(response.getReturnValue());
                   
//        });
        alert('successfully deleted!');
        $A.enqueueAction(accountinfo);     
    },
    
    
    
    handleClick : function(cmp, event) {
        var attributeValue = cmp.get("v.text");
        console.log("current text: " + attributeValue);
        var target = event.getSource();
        cmp.set("v.text", target.get("v.label"));
    },
})
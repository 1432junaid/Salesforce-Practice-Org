public with sharing class CustomController {
	public List<Pizza_Menu__c>  data;
    public List<Pizza_Menu__C> menudata;
    public String Name {get ; set; }
    public List<Pizza_Menu__C> getMenudata(){
		//System.debug([select name from Pizza_Menu__c]);        
       return [select name from Pizza_Menu__c];      
    }

    public List<Pizza_Menu__c> getData(){
        data = [SELECT Id, Name, RecordTypeId, Pizza_Price__c FROM Pizza_Menu__c LIMIT 500];
        return data;
    }
    public PageReference save(){
        Pizza_Menu__c obj = new Pizza_Menu__c();
        obj.Name = Name;
        insert obj;
//        System.debug(Name);     
        return new PageReference('/'+obj.ID);   
    }    
    
}
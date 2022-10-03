public class HolidayTriggerAnunay {
    public static void countholidays(lIST<Holiday__c> oldMap){
        
        List<Leave__c> lv1=[Select id,Name,Start_date__c,End_Date__c,Number_of_Leave__c from Leave__c];
        List<Leave__c> lv2=new List<Leave__c>();
        
        List<Holiday__c> hl1=[select id,Leave__r.Number_of_Leave__c,Holiday_Date__c from Holiday__c];
        List<Holiday__c> hl2=new List<Holiday__c>();
        
        set<DateTime> dt=new set<DateTime>();
        
	
	}
}
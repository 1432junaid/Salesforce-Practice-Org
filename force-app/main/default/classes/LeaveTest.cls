@isTest
public class LeaveTest {
	@isTest
    public static void leave(){
        List<Leave__c> lvList = new List<Leave__c>();
        Leave__c lv = new leave__c();  
        lv.Name = 'test';
        lv.Start_date__c = Date.today();
        lv.End_date__c = Date.today() + 15;
        List<holiday_new__c> hdList = new List<holiday_new__c>();
        holiday_new__c hd = new holiday_new__c();
        hd.Date__c = Date.today() + 5;
        hdList.add(hd);
        lvList.add(lv);
        insert hdList;
        insert lvList;
        
    }
}
public class LeaveTriggerHandler {
    public static void countLeave_version1(List<Leave__c> newList){
		set<Date> holiday_dates = new set<Date>();
        
        for(holiday_new__c hd : [SELECT Date__c FROM holiday_new__c] ){
	            holiday_dates.add(hd.Date__c);
        }       

        Integer count_leave = 0;

        for(Leave__c lv : newList){
            Integer count = 0;
            for(Date st = lv.Start_date__c; st <= lv.End_date__c; st = st.addDays(1)){
                Datetime dt = st;
                if(dt.format('EEE') != 'Sun' && dt.format('EEE') != 'Sat' && !holiday_dates.contains(st)){
                        ++count;
                }
            }
            lv.Number_of_Leave__c = count;
        }
    }//for separate Obj holiday_new
    public static void countLeave_version2(List<Leave__c> newList){
		List<Leave__c> lvList = [SELECT id,(SELECT id FROM Holidays__r) FROM Leave__c WHERE id IN : newList];
        for(Leave__c lv : lvList){
            lv.Number_of_Leave__c = lv.Holidays__r.size();
        }         
    }//for related Obj Holiday
}
public class HolidayTriggerHandler {
    public static void countholidays(Map<id,Holiday__c> oldMap){
//        List<Leave__c> updateLeave = new List<Leave__c>();		//we have to update the Leave.
		set<id> associatedHolidays = new set<id>();				//we have all leave id having atleast 1 holidays.
        map<id,List<date>> lev_holidate = new map<id,List<date>>(); 
        //having all leaves having atleast one Holiday.
        for(Holiday__c holidays : oldMap.values()){
            List<Date> dt = new List<Date>();
            if(holidays.Leave__c != null){
                associatedHolidays.add(holidays.Leave__c);
                //having all leaves having atleast one Holiday.
                dt.add(holidays.Holiday_Date__c);
                lev_holidate.put(holidays.id,dt);
            }
        }      
        
        List<Leave__c> updateLeave = [SELECT id,Start_date__c,End_date__c,Number_of_Leave__c
                                  FROM Leave__c WHERE id IN : associatedHolidays ];  
        
        List<Holiday__c> hl=[SELECT id,Holiday_Date__c FROM Holiday__c ];
        
        /*WHERE hd.Holiday_Date__c <=End_date__c AND hd.Holiday_Date__c >= Start_date__c
                           AND id IN : associatedHolidays */
        for(Leave__c lv:[Select id,Start_date__c,End_date__c,Number_of_Leave__c from Leave__c])
        {
            
        }
}
}
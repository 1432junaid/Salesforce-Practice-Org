trigger HolidayTrigger on Holiday__c (after insert, before delete, after update) {
    if(Trigger.isAfter){
        //HolidayTriggerHandler.countholidays(Trigger.oldMap);
        HolidayTriggerAnunay.countholidays(Trigger.New);
    }
    
    /*if(Trigger.isBefore){
        
    }*/
}
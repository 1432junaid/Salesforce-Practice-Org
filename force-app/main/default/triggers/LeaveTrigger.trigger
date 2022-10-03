trigger LeaveTrigger on Leave__c (before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LeaveTriggerHandler.countLeave_version1(Trigger.new);            
        }
        if(Trigger.isUpdate){
            LeaveTriggerHandler.countLeave_version2(Trigger.new);            
        }
    }
}
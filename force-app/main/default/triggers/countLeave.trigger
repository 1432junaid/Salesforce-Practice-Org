trigger countLeave on Leave__c (before insert, before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert || Trigger.isUpdate){
//            countLeaveHandler.count(Trigger.new);
//            countLeaveHandler.version3(Trigger.new);
        }
    }
}
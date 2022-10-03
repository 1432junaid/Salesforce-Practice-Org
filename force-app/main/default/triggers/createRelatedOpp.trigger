trigger createRelatedOpp on Opportunity (after insert, before update) {
    if(Trigger.isbefore) {
        if(Trigger.isUpdate){
            //createRelatedOppHandler.createOpp(Trigger.new);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            
        }
    }
}
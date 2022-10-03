trigger ContactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    //before context
    
    if(Trigger.isBefore) {
        
    }	
    

    // After context

    if(Trigger.isAfter) {
        if(Trigger.isInsert) {
        //    new ContactTriggerHelper().run();
        }
    }
}
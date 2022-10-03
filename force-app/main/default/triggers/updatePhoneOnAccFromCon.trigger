trigger updatePhoneOnAccFromCon on Contact (after insert, after update, after delete,after undelete){
    
    if(trigger.isinsert || trigger.isundelete || Trigger.isupdate ){ 
        updatePhone.updateCase(trigger.new , trigger.oldmap);
    }
}
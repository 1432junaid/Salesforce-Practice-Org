trigger CountGender on Contact (after insert, after update, after delete , after undelete ) {
    if( Trigger.isafter || Trigger.isinsert || Trigger.isupdate || Trigger.isdelete || Trigger.isundelete ) {
        CountGenderTriggerHandler.updateAccountfields ( Trigger.new , Trigger.old );
    }
}
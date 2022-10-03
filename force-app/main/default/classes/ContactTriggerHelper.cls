public class ContactTriggerHelper extends TriggerHandler{
	private Map<Id, Contact> newConMap;
    private Map<Id, Contact> oldConMap;
    public void ContactTriggerHelper(){
        this.setMaxLoopCount(1);				//prevent recursion
        this.newConMap = (Map<Id, Contact>) Trigger.newMap;
        this.oldConMap = (Map<Id, Contact>) Trigger.oldMap;
    }
    
    public override void beforeInsert(){
        
    }
    
    public override void AfterInsert(){							

		Set<Id> AccountIdSet = ContactTriggerHandler.getAllRealtedAccountId(newConMap.values());		//get all related accountID
        //ContactTriggerHandler.updateRelatedAccountRating(oldConMap);
		//ContactTriggerHandler.updateTotalRealtedContactOnAccount(oldConMap,AccountIdSet);

    }
}
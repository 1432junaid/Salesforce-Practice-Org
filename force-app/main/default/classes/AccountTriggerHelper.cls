public class AccountTriggerHelper  extends TriggerHandler{
	private Map<Id, Account> newAccMap;
    private Map<Id, Account> oldAccMap;
    
    public AccountTriggerHelper() {				//constructor 
        this.setMaxLoopCount(1);				//prevent recurssion
        this.newAccMap = (Map<Id, Account>) Trigger.newMap;
        this.oldAccMap = (Map<Id, Account>) Trigger.oldMap;
    }
    
    public override void beforeUpdate() {
        AccountTriggerHandler.updateAccountRating(newAccMap, oldAccMap);
    }
    
    public override void AfterUpdate() {
        
    }
}
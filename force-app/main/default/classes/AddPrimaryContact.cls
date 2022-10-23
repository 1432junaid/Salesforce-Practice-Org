public class AddPrimaryContact implements Queueable {
    public Contact primaryContact;
    public String stateName; 
    public AddPrimaryContact(Contact objContact, String state) {
        this.primaryContact = objContact;
        this.stateName = state;
    }
    public void execute(QueueableContext context){
       	makeRelatedContact(primaryContact, stateName);
    }
    
    public void makeRelatedContact(Contact primaryContact, String stateName) {
        List<SObject> updateContactList = new List<SObject>();
        set<Id> setOfAccId = new Set<Id>();
        for(Account objAccount : [SELECT id, BillingState FROM Account WHERE BillingState =: stateName LIMIT 200] ){
            setOfAccId.add(objAccount.Id);
        }

        for(Id accountId : setOfAccId){
            Contact objContact = primaryContact.clone();
            objContact.AccountId = accountId;
            updateContactList.add(objContact);
        }
        if(updateContactList != null && updateContactList.size() > 0 ){
            Database.insert(updateContactList);
        }
        
    }
}
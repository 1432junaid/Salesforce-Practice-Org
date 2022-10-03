public class AccountTriggerTestHandler {
    public static void createRelatedOpp(List<Account> newList) {
        List<Opportunity> oppList = new List<Opportunity>();
        
        // Get the related opportunities for the accounts in this trigger
        
        Map<Id,Account> acctsWithOpps = new Map<Id,Account>( [SELECT Id,(SELECT Id FROM Opportunities) 
                                                              FROM Account WHERE Id IN : newList ]);
        
        //        Add an opportunity for each account if it doesn't already have one.
        //            // Iterate through each account.
        
        for(Account a : newList) {
            System.debug('acctsWithOpps.get(a.Id).Opportunities.size()=' + acctsWithOpps.get(a.Id).Opportunities.size());
            if(acctsWithOpps.get(a.Id).Opportunities.size() == 0) {
                oppList.add(new Opportunity(Name = a.Name+' Opportinity',
                                            StageName = 'Prospecting',
                                            CloseDate = System.today().addMonths(1),
                                            AccountId = a.Id));
            }	
        }
        
        
        if(oppList.size() > 0 ){
            insert oppList;
        }
    }
    public static void countNoOfRelatedAttmnts(List<Account> newList) {
        Map<id,Account> acctsWithOpps = new Map<id,Account>([ SELECT id,
                                                              (SELECT id FROM Attachments) FROM Account 
                                                             WHERE id IN : newList] );
//        System.debug('size :'+acctsWithOpps.get(a.Id).Attachments.size() );
        for(Account a : newList) {
            System.debug('accounts'+a);
            if(acctsWithOpps.get(a.Id).Attachments.size() >= 0 && acctsWithOpps.get(a.Id).Attachments.size() == null){
                system.debug('>>>> : '+acctsWithOpps.get(a.id).Attachments.size());
                a.Number_of_attachments__c = acctsWithOpps.get(a.id).Attachments.size();
            }
        }
//        update newList;
    }
    public static void countNumberofRelatedContacts(List<Account> newList){
        
    }
}
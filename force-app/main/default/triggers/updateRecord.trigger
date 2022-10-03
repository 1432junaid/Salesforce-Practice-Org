trigger updateRecord on Contact (after insert, after update) {
   if(trigger.isAfter){
        if(trigger.isUpdate){
            Set<Id> setId = new Set<Id>();
            for(Contact conList : Trigger.new){
                if(conList.Phone != null && conList.AccountId != null)
                    setId.add(conList.AccountId);
            }
            System.debug('setId '+ setId); 
            
            List<Account> accLst =[Select Id, Name, Phone, (Select Id, firstName, LastName, Phone, AccountId From Contacts) From Account Where Id IN:setId];
            
            for(Account acc:accLst){
                for(Contact con : acc.Contacts){
                    if(con.Phone!=Null){
                        acc.Phone=con.Phone;
                    }
                }
            }
            update accLst;
        }
    } 
}
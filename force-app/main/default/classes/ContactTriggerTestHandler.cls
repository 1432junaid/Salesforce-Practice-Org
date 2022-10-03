public class ContactTriggerTestHandler {
    public static void updateAccNoOfConts(List<Contact> newList){
        Set<id> accIds = new Set<id>();
        List<Account> updateconList = new List<Account>();
        for(Contact con : newList) {	//we get all the accounts having contacts
            accIds.add(con.AccountId);
        }
        
        Map<id,Integer> accNconts = new Map<id,Integer>(); //  AccountId with number of contacts 
        for(Contact con : newList) {
            if(accNconts.containsKey(con.AccountId)){
                accNconts.put(con.AccountId,accNconts.get(con.AccountId) +1);
            }else {
                accNconts.put(con.AccountId,1);
            }
        }
        
                
        for(Account acct : [Select Id,Number_of_Contact__c from Account where id in : accNconts.keySet()]) {
            acct.Number_of_Contact__c = accNconts.get(acct.Id);
            updateconList.add(acct);
        }
        update updateconList;
    }
//***********************************************************************************************************************    
    public static void findNumberOfContacts(List<Contact> newList){          
        
        Map<id,Integer> accNconts = new Map<id,Integer>();  // map account with number of contact
        set<id> accId = new set<id>();
        for(Contact con : newList){
            accId.add(con.AccountId);		//set store all account that having alteast one contact
        }
//        List<Contact> conList = [SELECT count(id) FROM contact WHERE newList.accountId IN : accId] ; 
        
        for(Contact con : newList){
            if(accNconts.containsKey(con.AccountId)){
                accNconts.put(con.AccountId,accNconts.get(con.AccountId)+1);
            }else{
                accNconts.put(con.AccountId,1);
            }
        }
        
        List<account> updaccList = new List<account>();
        
        for(Account acc : [SELECT Id,Number_of_Contact__c from Account where Id IN : accNconts.keyset()] ){
            System.debug('accNconts.get(acc.Id)');
            acc.Number_of_Contact__c = accNconts.get(acc.Id);
            updaccList.add(acc);
		}
        update updaccList;
    }
//***********************************************************************************************************************
    public static void totalSalary_v1(List<Contact> newList, map<id,Contact> oldList){
        map<id,Account> accSalary = new map<id,Account>();
        List<Account> updateList = new List<Account>();
        
        set<id> accIdSet = new set<id>();
        for(Contact con : newList){
            if(con.AccountId != null && oldList.get(con.id).Accountid != con.AccountId)
                accIdSet.add(con.AccountId);
            if(con.AccountId != null )
                accIdSet.add(oldList.get(con.id).Accountid);
        }
        for(Contact con : oldList.values()){
            if(con.AccountId != null)
                accIdSet.add(con.AccountId);
        }
        for(Account acc : [SELECT id, Total_Salary__c FROM Account WHERE id IN :accIdSet]){
            accSalary.put(acc.ID,acc);
        }
        
        for(Contact con : newList){            
            accSalary.get(con.AccountId).Total_Salary__c = accSalary.get(con.AccountId).Total_Salary__c + con.Salary__c;
        }
        upsert accSalary.values();
        
    }
//***********************************************************************************************************************
    public static void totalSalary_v2(List<Contact> newList){
        map<id,Account> accSalary = new map<id,Account>();
//        List<Account> updateList = new List<Account>();
      
        set<id> accIdSet = new set<id>();
        for(Contact con : newList){
            if(con.AccountId != null)
                accIdSet.add(con.AccountId);
        }
        for(Account acc : [SELECT id, Total_Salary__c FROM Account WHERE id IN :accIdSet]){
            accSalary.put(acc.ID,acc);
        }
        
        for(Contact con : newList){            
            accSalary.get(con.AccountId).Total_Salary__c = accSalary.get(con.AccountId).Total_Salary__c + con.Salary__c;
        }
        System.debug(accSalary.values());
        upsert accSalary.values();
        
    }      
}
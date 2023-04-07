public class AccountTriggerHandler {
    
    public static void updateAccountRating(Map<Id, Account> newAccMap, Map<Id, Account> oldAccMap){
        
        List<Account> updateAccList = new List<Account>();
        
        for(Account acc : newAccMap.values() ){
            if(acc.Rating !=  oldAccMap.get(acc.id).Rating || oldAccMap.get(acc.id).Rating == 'Hot' ){
                acc.Rating = 'Cold';                
            }
        }
        
    }
    
    //Restrict Account to delete if it have 2 or more contacts associated
    public static void restrictAccountDelete(List<Account> listOfAccount){        
        Final Integer contactLimit = 2;
        
        Map<Id, Integer> MAP_OF_ACCID_WITH_NUM_CON = new Map<Id, Integer>();
        
        if(listOfAccount != null && listOfAccount.size() > 0 ){            
            for(Contact itrCon : [SELECT id, AccountId From Contact WHERE AccountId != null AND AccountId IN : listOfAccount]) {
                if(MAP_OF_ACCID_WITH_NUM_CON.containsKey(itrCon.AccountId)){
                    MAP_OF_ACCID_WITH_NUM_CON.put(itrCon.AccountId, MAP_OF_ACCID_WITH_NUM_CON.get(itrCon.AccountId)+1);
                }else{
                    MAP_OF_ACCID_WITH_NUM_CON.put(itrCon.AccountId, 1);
                }
            }
        
            for(Account itrAccount : listOfAccount){
                if(MAP_OF_ACCID_WITH_NUM_CON != null && MAP_OF_ACCID_WITH_NUM_CON.size() > 0 ){
                    if(MAP_OF_ACCID_WITH_NUM_CON.containsKey(itrAccount.Id) && MAP_OF_ACCID_WITH_NUM_CON.get(itrAccount.Id) >= contactLimit ){
                        itrAccount.addError('You can not delete this account because it have more than one contact');
                    }
                }
            }
            
        }
    }
    
    
    
    
}
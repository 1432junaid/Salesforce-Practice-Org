public class AccountTriggerHandler {
    
    public static void updateAccountRating(Map<Id, Account> newAccMap, Map<Id, Account> oldAccMap){
        
        List<Account> updateAccList = new List<Account>();
        
        for(Account acc : newAccMap.values() ){
            if(acc.Rating !=  oldAccMap.get(acc.id).Rating || oldAccMap.get(acc.id).Rating == 'Hot' ){
				acc.Rating = 'Cold';                
            }
        }
        
    }
}
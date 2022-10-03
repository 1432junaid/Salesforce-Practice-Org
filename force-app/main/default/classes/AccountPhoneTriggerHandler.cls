public class AccountPhoneTriggerHandler {
    public static void beforeInserted(List<Account> newList){
        for(Account acc : newList){
            if(acc.Phone != null)
                if(acc.Phone.Contains('+91') == false)
                acc.Phone += '+91 '+acc.Phone;
        }
    }
    
    public static void beforeUpdate(List<Account> newList){
        for(Account acc : newList){
            if(acc.Phone != null)
                if(acc.Phone.Contains('+91') == false)
                acc.Phone += '+91 '+acc.Phone;
        }
    }        
}
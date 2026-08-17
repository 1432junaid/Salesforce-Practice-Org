public class ContactTriggerHandler {
    
    //senario : stop the insertion if contact phone number not exist in system 	
    public static void checkContactPhone(List<Contact> ContactList){
        
    }
    
    //get all account those have atleast one contact
    public static Set<Id> getAllRealtedAccountId(List<Contact> ContactList ){		
		Set<Id> result = new Set<Id>();
        for(Contact con : ContactList ){
            if(String.isNotBlank(con.AccountId) ){
                result.add(con.AccountId);
            }
        }
        return result;
    }
    
    public static void updateRelatedAccountRating(Map<Id, Contact> oldConMap){
        
    }
    
    public static void updateTotalRealtedContactOnAccount(Map<Id, Contact> oldConMap, Set<id> AccountIdSet) {
		
  //      Map<Id, Contact> AccContactList = getAllRealtedAccountId( oldConMap.values());
        
    }
}
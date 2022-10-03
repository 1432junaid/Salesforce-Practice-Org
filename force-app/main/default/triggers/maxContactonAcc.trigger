trigger maxContactonAcc on Contact (before insert, after insert, before update, after update) {
    public static set<id> accIdSet = new set<id>();
    
    for(Contact con: Trigger.New){
        accIdSet.add(con.AccountId);
    }

    Map<id, Account> accMap = new Map<id,Account>([Select id, (Select id From Contacts) From Account where id In :accIdSet]);
    
    for(Contact con: Trigger.New){
        if(accMap.containsKey(con.AccountId) && accMap.get(con.AccountId).Contacts.size()>3){
            
               con.addError('You cannot have more than 3 Contacts per Account');
        }
    }
}
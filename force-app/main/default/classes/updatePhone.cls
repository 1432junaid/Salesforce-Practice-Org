public class updatePhone {
	public static set<id> accset = new set<id>();
	public static void updateCase(List<Contact> conlist , Map<id,contact> oldMapObject){
        for(Contact con :conlist){
            if(trigger.isinsert || trigger.isundelete ||(trigger.isUpdate && con.AccountId != oldMapObject.get(con.Id).AccountId) ){
                if(con.AccountId != NULL && con.Phone!=null){
                    accset.add(con.AccountId);
                }
                if(trigger.isUpdate && oldMapObject.get(con.Id).AccountId != NULL && con.Phone!=null)
                    accset.add(oldMapObject.get(con.Id).AccountId);
            }
        }
        updateaccount(accset, conList);
    }
      
    
    public static void updateaccount(set<id> accset, List<Contact> conList){        
        list<Account> accl =[Select id,name,Phone, (Select id ,name,Phone from contacts)from Account where id IN : accset];
        for(Account a : accl){
            for(Contact con : conList)
                a.Phone = con.Phone;
        }
        update accl;
    }      
    
}
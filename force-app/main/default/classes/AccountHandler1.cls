//public class AccountHandler {   #this name is used befor 
public class AccountHandler1 {
    public static void updatePhone(List<Account> oldList, Map<id,Account> oldmap){
        Set<id> accId = new Set<id>();
        List<Contact> contoup=new list<contact>();
        for(Account acc : oldList){
            accId.add(acc.id);
        }
        List<Contact> conList  =  [Select id, Accountid,Phone FROM contact Where Accountid IN : accId];
        for(contact cn: conlist)
        {
            cn.phone=oldmap.get(cn.accountid).phone;
            contoup.add(cn);
        }
        if(contoup.size()>0)
        {
            update contoup;
        }
    }
    public static void contName(List<Account> newList){
        
    }
}
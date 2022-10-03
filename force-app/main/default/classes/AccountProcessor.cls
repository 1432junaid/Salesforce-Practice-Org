public class AccountProcessor {
    @future
    public static void countContacts(List<Id> AccId){
        List<Account> accUpdateList = new List<Account>();
        for(Account acc : [SELECT id,Number_of_Contacts__c,(SELECT id FROM Contacts) FROM Account]){
            Account temp  = new Account();
            temp.id = acc.Id;
            temp.Number_of_Contacts__c = acc.Contacts.size();
            accUpdateList.add(temp);
        }
        upsert accUpdateList;
    }
}
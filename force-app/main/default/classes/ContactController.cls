public with sharing class ContactController {
@AuraEnabled
    public static List<Account> getAccount() {
        List<Account> Accounts = 
                [SELECT Id, Name, Phone, Website, Industry FROM Account];

        //Add isAccessible() check
        return Accounts;
    }

@AuraEnabled
    public static void abc(List<String> abcid) {
        System.debug('tested'+abcid);

        List<Account> Accounts = 
                [SELECT Id, Name, Phone, Website, Industry FROM Account WHERE Id IN:abcid];
        delete Accounts;
    }    
   
}
public with sharing class CreateRecords {
//    @AuraEnabled(cacheable = true),
    @InvocableMethod(Label='create contact')
    public static void createContact(){
        System.debug('createContact called ->>>>>');
        Contact objContact = new Contact();
        //objContact.AccountId = AccountId;
        objContact.LastName = 'Created by CreateRecords testing flow';
        insert objContact;
//        retund String.valueOf(objContact.Id);
    }
}
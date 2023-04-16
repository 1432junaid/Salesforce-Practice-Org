public with sharing class ImperativeMethodsForLwc {
    @AuraEnabled
    public static List<Pizza_Menu__c> getPizzaList(){
        try {
            return [SELECT id, Name FROM Pizza_Menu__c WITH SECURITY_ENFORCED LIMIT 10];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static List<Contact> getAccountContacts(String recordId){
        System.debug('record Id ::'+recordId);
        List<Contact> listOfContact = new List<Contact>();
        try {
            if(String.isNotBlank(recordId)){
                listOfContact = [SELECT id, AccountId, Name, MobilePhone, Email 
                FROM Contact 
                WHERE AccountId =: recordId
                WITH SECURITY_ENFORCED];
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return listOfContact;
    }
    
}
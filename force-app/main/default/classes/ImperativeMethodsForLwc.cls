public with sharing class ImperativeMethodsForLwc {
    @AuraEnabled
    public static List<Pizza_Menu__c> getPizzaList(){
        try {
            return [SELECT id, Name FROM Pizza_Menu__c WITH SECURITY_ENFORCED LIMIT 10];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}
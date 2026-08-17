public with sharing class ChildListController {
    @AuraEnabled
    public static List<Contact> getContactList(String accountId) {
        try {
            System.debug('Enter in getContactList >> '+accountId);
            if(String.isNotBlank(accountId)){
                return [
                    SELECT Id, Name, AccountId
                    FROM Contact
                    WHERE AccountId =: accountId
                    WITH SECURITY_ENFORCED
                ];
            }
            return null;
        } catch (Exception exp ) {
            System.debug('Error in '+exp.getLineNumber()+' >> '+exp.getMessage());
        }
        return null;
    }
}
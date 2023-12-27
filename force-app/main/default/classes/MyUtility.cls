public class MyUtility {
    public static Integer checkAge(String dob){
        Integer age;
        Date dt = Date.parse(dob);
        Integer days = dt.daysBetween(Date.today());
        age = Integer.valueOf(days/365);
        return age;
    }
    
    
    @AuraEnabled
    public static Map<String, String> getLastAccount(){
        Map<String, String> MAP_ACC_NAME = new Map<String, String>();
        for(Account acc : [SELECT id, Name FRom Account LIMIT 3]){
            MAP_ACC_NAME.put(acc.id, acc.Name);
        }
        return MAP_ACC_NAME;
    }


    @AuraEnabled
    public static void deleteContactRecord( String json){
        try {
            System.debug(' Json ???'+json);
            if(String.isNotBlank( json)) {
                List<Contact> listOfContact = (List<Contact>)System.JSON.deserialize(json,List<Contact>.class);
                System.debug('listOfContact >> '+listOfContact);
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }


    @AuraEnabled
    public static void uploadFile(String recordId, String contentVersionId){
        try {

            List<Contact> listOfContact = [SELECT id FROM Contact WHERE AccountId =: recordId LIMIT 1];

            String contactId = listOfContact[0].Id;
            System.debug(' contactId >> '+contactId);
            ContentDocumentLink cdl = new ContentDocumentLink();
            cdl.ContentDocumentId = [
            SELECT ContentDocumentId 
            FROM ContentVersion 
            WHERE Id =: contentVersionId
            ].ContentDocumentId;
            cdl.LinkedEntityId = contactId;

            cdl.ShareType = 'V';

            insert cdl;

        } catch (Exception e) {
            System.debug('Exp msg : '+e.getMessage());

            System.debug('Exp msg : '+e.getLineNumber());

            throw new AuraHandledException(e.getMessage());
        }
    }


}
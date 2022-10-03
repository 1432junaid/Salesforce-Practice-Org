public class CountGenderTriggerHandler {
    public static void updateAccountfields ( List<contact> conList , List<contact> conOldList ) {
        List<Contact> conTempList = new List<Contact>();
        for( Contact con : conList) {
            if(con.AccountId != null && con.Gender__c != Null) {
                
                conTempList.add(con);
            }   
        }
        
        Account acc = new Account(); 
        List<contact> accIdMale =  new List<contact>();
        List<contact> accIdFemale =  new List<contact>();
        for ( Contact con : conTempList ) {
            if( con.AccountId == acc.id ) {
                
                if (con.Gender__c == 'Male' ) { 
                    accIdMale.add(con);
                } 
                if ( con.Gender__c == 'Female' ) {
                    accIdFemale.add(con);
                }
            } 
            acc.Number_of_Male_contacts__c = accIdMale.size();
            acc.Number_of_Female_Contacts__c = accIdFemale.size();
        }
        update acc;        
    }
}
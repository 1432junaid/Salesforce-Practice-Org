@isTest
public class AddPrimaryContactTest{
    @TestSetup
    static void makeData(){
        List<SObject> insertAccountList = new List<SObject>();
        for(Integer i = 1 ; i <= 50; i++){
            Account objAccount1 = new Account(Name = 'Test Account '+i, BillingState = 'CA');
            Account objAccount2 = new Account(Name = 'Test Account '+i, BillingState = 'NY');
            insertAccountList.add(objAccount1);
            insertAccountList.add(objAccount2);
        }
        insert insertAccountList;
        /*
        if(insertAccountList != null && insertAccountList.size() > 0) {
            Database.SaveResult[] insertSaveResult = Database.insert(insertAccountList);
        }
		*/
    }

    @IsTest
    static void test1(){
        Contact objContact = new Contact();
        objContact.LastName = 'Primary Contact';
        List<Account> accountList = [SELECT id, BillingState FROM Account WHERE BillingState = 'CA'];
        Test.startTest();
        System.enqueueJob(new AddPrimaryContact(objContact, 'CA'));
        Test.stopTest();
        System.assertEquals(50, accountList.size());
    }

}
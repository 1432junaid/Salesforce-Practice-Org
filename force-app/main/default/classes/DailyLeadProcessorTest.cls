@isTest
public with sharing class DailyLeadProcessorTest {
    
    public static final String CRN_EXP = '0 5 2 26 10 ? 2022';
    @isTest
    static void test(){
        List<Lead> insertLead = new List<Lead>();
        for(Integer i = 1; i <= 200; i++){
            Lead objLead = new Lead(LastName = 'TestLead '+i, Company = 'xyz company');
            insertLead.add(objLead);
        }
        Database.insert(insertLead);
        Test.startTest();
        String jobId = System.schedule('Trail Head Practice Test', CRN_EXP, new DailyLeadProcessor());
        Test.stopTest();
        System.assertEquals( 200 , insertLead.size());
    }
}
@isTest
private class LeadProcessorTest {
	static testMethod void testMethodForLeadCreation(){
		List<Lead> listOfinsertList = new List<Lead>();
		for(Integer i = 1; i <= 200; i++){
			Lead currentLead = new Lead(LastName = 'testName '+i,Company = 'TMC', LeadSource = 'Other');
			listOfinsertList.add(currentLead);
		}
		insert listOfinsertList;

        Test.startTest();
		LeadProcessor objLeadProcessor = new LeadProcessor();
		Database.executeBatch(objLeadProcessor);
		Test.stopTest();
    }
}
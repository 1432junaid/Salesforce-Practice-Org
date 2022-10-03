@isTest
private class TestRestrictContactByName {
	@isTest
    private static void restirctInsertContact(){
        List<Contact> insertList = new List<Contact>();
        Contact con = new Contact(LastName = 'INVALIDNAME');
        insertList.add(con);
		Test.startTest();
        List<Database.SaveResult> dmlResult = Database.insert(insertList, false);
		Test.stopTest();
        String expectedResult = 'The Last Name "'+con.LastName+'" is not allowed for DML';
        String actualResult = (String)dmlResult[0].getErrors()[0].getMessage();
        System.assertEquals(actualResult, expectedResult);
    }
}
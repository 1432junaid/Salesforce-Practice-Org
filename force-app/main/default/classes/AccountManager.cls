@RestResource(urlMapping='/Account/Contacts/*')
global with sharing class AccountManager {
	@HttpGet
    global static List<Account> getAccount(){
/*
        RestRequest request = RestContext.request;
        String AccId = request.requestURI.substring(request.requestURI.LastIndexOf('/')+1);

        Account result = [Select Id,Name,(SELECT Id, Name From Contacts) FROM Account WHERE Id =: AccId];
//        List<Contact> ContactList = [SELECT Id,LastName FROM Contact WHERE AccountId =: AccId];
//        return result;
*/
		System.debug('Enter in AccontManager ::::');

        List<Account> resultAccList = [SELECT Id,Name,(SELECT Id,Name FROM Contacts) FROM Account];
        return resultAccList;
    }
}
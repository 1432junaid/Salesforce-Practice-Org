@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
	@HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
		System.debug('Enter in AccontManager ::::');
		String accountId = request.requestURI.substringBetween('/Accounts/','/contacts');
        Account result = new Account();
        if(String.isNotBlank( accountId) ) { 
            result = [SELECT Id,Name,(SELECT Id,Name FROM Contacts) FROM Account Where Id =: accountId LIMIT 1];
        }
        return result;
    }
}
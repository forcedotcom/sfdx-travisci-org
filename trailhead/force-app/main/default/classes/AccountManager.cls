@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
	@HttpGet
	global static Account getAccount() {
		RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL2
        String acctId = request.requestURI.substringBetween('/Accounts/' , '/contacts');
        Account result =  [SELECT Id,Name, (Select Id, Name FROM Contacts)
                        FROM Account
                        WHERE Id = :acctId];
        return result;
	}
}
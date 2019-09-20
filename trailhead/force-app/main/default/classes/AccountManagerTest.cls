@isTest
private class AccountManagerTest {
	@testSetup
	private static void testSetup(){
		Account a = new Account();
		a.Name = 'ABC Test Company';
		insert a;

		Contact c = new Contact();
		c.Account=a;
		c.FirstName = 'Test';
		c.LastName = 'Guy';
		insert c;
	}

	@isTest static void testGetAcctById() {
		Account a = [SELECT Id FROM Account WHERE Name = 'ABC Test Company' LIMIT 1];
		Id recordId = a.Id;
        // Set up a test request3
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://yourInstance.salesforce.com/services/apexrest/Accounts/'
            + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAcct = AccountManager.getAccount();
        // Verify results
        System.assert(thisAcct != null);
    }
}
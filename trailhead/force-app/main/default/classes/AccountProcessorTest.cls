@isTest
private class AccountProcessorTest {
    @testSetup static void setup(){
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;
        
        Contact c1 = new Contact();
        c1.FirstName = 'Test1';
        c1.LastName = 'Test1';
        c1.AccountId = a.Id;
        Insert c1;
        
        Contact c2 = new Contact();
        c2.FirstName = 'Test1';
        c2.LastName = 'Test1';
        c2.AccountId = a.Id;
        Insert c2;
    }
    
    @isTest static void testMethod1() {
        List<Id> idList = new List<Id>();
        
        Account a = [SELECT Id, Name FROM ACCOUNT LIMIT 1];
        
        idList.add(a.Id);
        Test.startTest();
        AccountProcessor.countContacts(idList);
        Test.stopTest();
    }
}
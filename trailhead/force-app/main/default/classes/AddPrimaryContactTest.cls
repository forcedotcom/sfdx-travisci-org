@isTest
private class AddPrimaryContactTest {
    @testSetup
    static void setup() {
        List<Account> accounts = new List<Account>();
        
        for(Integer i=0; i<50; i++) {
            accounts.add(new Account(Name='Test Account ' + i, BillingState='NY'));
        }
        for(Integer i=0; i<50; i++) {
            accounts.add(new Account(Name='Test Account2 ' + i, BillingState='CA'));
        }
        insert accounts;
        
        Contact c1 = new Contact();
        c1.FirstName='Test';
        c1.LastName='Testering';
        insert c1;
    }
    
    static testmethod void testQueueable() {
        Contact c = [SELECT Id, FirstName, LastName, Email FROM Contact LIMIT 1];
        List<Account> aList = [SELECT Id, Name FROM Account WHERE BillingState = 'CA'];
        AddPrimaryContact apc = new AddPrimaryContact(c,'CA');
        
        Test.startTest();
        System.enqueueJob(apc);
        Test.stopTest();
        System.assertEquals(51,[SELECT count() FROM Contact]);
    }

}
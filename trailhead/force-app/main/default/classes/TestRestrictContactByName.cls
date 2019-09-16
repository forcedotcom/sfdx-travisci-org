@isTest
private class TestRestrictContactByName {
    
  @isTest static void TestContact() {
        //Construct Contact
        Contact testContact = new Contact(FirstName = 'John', LastName = 'INVALIDNAME', email = 'test@test.com');
        
        //Test Insertion
        Test.startTest();
        try {
            insert testContact;
        }
        catch (DmlException dmlEx)
        {
            System.debug('Invalid insertion');
            System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', dmlEx.getDmlMessage(0));
        }        
        Test.stopTest();

    }
}
@isTest
private class ParkLocatorTest {
    @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String country = 'United States';
        String[] result = ParkLocator.country(country);
        // Verify that a fake result is returned
        String[] testResult = new String[] {'test1','test2'};
        System.assertEquals(testResult, result); 
    }
}
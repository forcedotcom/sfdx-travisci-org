@isTest
private class AnimalLocatorTest {
	@isTest static void AnimalLocatorMock() {
		Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
		string result = AnimalLocator.getAnimalNameById(1);
		string expectedResult = 'chicken';
		System.assertEquals(result, expectedResult);
	}
}
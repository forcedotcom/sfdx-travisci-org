@isTest
public class GenerateDataTests {
    @isTest
    
    static void test() {
		GenerateData.initData();
        List<Boat__c> boats = [Select id from Boat__c];
        System.assert(boats.size() > 0, 'Boats found');
    } 
}
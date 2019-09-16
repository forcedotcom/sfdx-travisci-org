@isTest
public class LeadProcessorTest {
	@testSetup
    static void setup() {
        List<Lead> leads = new List<Lead>();
        for(Integer i=0; i<200; i++){
            Lead l = new Lead();
            l.LastName = 'Test ' + i;
            l.Company = 'Company ' + i;
            l.Status = 'Open - Not Contacted';
            leads.add(l);
        }
        insert leads;
    }
    
   @isTest
    static void test() {
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200, [SELECT count() FROM Lead WHERE LeadSource='Dreamforce']);
    }
}
@isTest
private class DailyLeadProcessorTest {
	@testSetup
    static void setup() {
        List<Lead> leads = new List<Lead>();
        
        for(Integer i =0; i<200; i++) {
            leads.add(new Lead(LastName='Test ' + i, Company='Company ' + i, Status='Open - Not Contacted'));
        }
        insert leads;
    }
    
    static testmethod void testSchedulable(){
        String CRON_EXP = '0 0 0 15 3 ? 2022';
        Test.startTest();
        String jobId = System.schedule('ScheduleApexTest',CRON_EXP, new DailyLeadProcessor());
        Test.stopTest();
        System.assertEquals(200,[SELECT count() FROM Lead WHERE LeadSource != null]);
    }
}
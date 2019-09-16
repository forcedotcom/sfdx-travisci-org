@ isTest public class TestVerifyDate {
 	@isTest static void testCheckDates() {
        Date date1 = date.newInstance(2017, 1, 15);
        Date date2 = date.newInstance(2017, 1, 30);
        Date testDate = VerifyDate.CheckDates(date1,date2);
        System.assertEquals(date2, testDate);
    }
    
    @isTest static void testCheckDatesFalse() {
        Date date1 = date.newInstance(2017, 1, 31);
        Date date2 = date.newInstance(2017, 1, 15);
        Date testDate = VerifyDate.CheckDates(date1,date2);
        System.assertEquals(date1, testDate);
    }
}
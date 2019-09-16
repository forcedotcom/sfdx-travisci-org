public with sharing class AccountProcessor {
	@Future
	public static void countContacts(List<Id> idList) {
        List<Account> aList = new List<Account>();
        
        for(Id aId : idList) {
            Account a = [SELECT Id, Name FROM Account WHERE ID =:aId];
            List<Contact> cList = [SELECT Id FROM Contact WHERE AccountID =:aId];
            a.Number_of_Contacts__c = cList.size();
            aList.add(a);
        }
        
        update aList;
	}
}
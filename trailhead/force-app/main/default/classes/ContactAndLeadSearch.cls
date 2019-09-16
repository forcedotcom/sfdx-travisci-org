public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string lastName) {
            String searchQuery = 'Find \'' + lastName + '\' IN ALL FIELDS RETURNING Contact, Lead';
            List<List<sObject>> searchList = search.query(searchQuery);
            
            Contact[] searchContacts = (Contact[])searchList[0];
            Lead[] searchLead = (Lead[])searchList[1];
        	return searchList;
    }
}
public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer num, string lastName) {
        List<Contact> contactList = new List<Contact>();
        for(Integer i=0;i<num;i++) {
			Contact newContact = new Contact(FirstName = 'John' + i, LastName = lastName);
    		contactList.add(newContact);
        }		
        return contactList;
    }
}
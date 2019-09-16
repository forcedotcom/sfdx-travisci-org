public class ContactSearch {
    public static List<Contact> searchForContacts(string lastName, string postalCode) {
        try {
            List<Contact> Contacts=[Select Id,Name FROM Contact WHERE LastName=:lastName and MailingPostalCode=:postalCode];
                System.debug('List ' + Contacts);
                return Contacts;     
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }
    }
}
public class AddPrimaryContact implements Queueable{
    private Contact pContact;
    private String state;
    
    public AddPrimaryContact(Contact c,String state) {
        this.pContact = c;
        this.state = state;
    }
    
    public void execute(QueueableContext context) {
        List<Account> acctList = [SELECT Id, Name FROM Account WHERE BillingState =:state LIMIT 200];
        List<Contact> cList = new List<Contact>();
        For(Account a: acctList) {
            Contact c = pContact.clone(false,false,false,false);
            c.AccountId = a.Id;
            insert c;
        }
        
    }
 
}
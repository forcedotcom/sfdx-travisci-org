public class LeadProcessor implements Database.Batchable<sObject>{
	public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, Name FROM Lead'
        );
    }
    
    
    public void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
        List<Lead> leads = new List<Lead>();
        for (Lead l : scope) {
            l.LeadSource = 'Dreamforce';
            leads.add(l);
        }
        update leads;
    }   
    
     public void finish(Database.BatchableContext bc){
        System.debug('Records processed. Shazam!');
        
    }    
    
    
}
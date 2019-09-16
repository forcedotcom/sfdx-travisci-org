trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> tasks = new List<Task>();
    
	 for (Order_Event__e order : Trigger.New) {
         if(order.Has_Shipped__c ==true) {
             Task t = new Task();
             t.Priority='Medium';
             t.Status='New';
             t.Subject='Follow up on shipped order ' + order.Order_Number__c;
             t.OwnerId='00541000001Hs10AAC';
             tasks.add(t);
         }
     }
    
    insert tasks;
}
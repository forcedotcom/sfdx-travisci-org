trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Task> taskList = new List<Task>();
    
    for(Opportunity opp : Trigger.New) {
        if(Trigger.isInsert){
            if(opp.StageName=='Closed Won') {
                taskList.Add(new Task(Subject='Follow Up Test Task',
                WhatId = opp.Id));
            }
        }
        
        if(Trigger.isUpdate){
            if(opp.StageName=='Closed Won' && opp.StageName!=Trigger.oldMap.get(opp.Id).StageName) {
            	taskList.Add(new Task(Subject='Follow Up Test Task',
                WhatId = opp.Id));
        	}
        }
    }
    if (taskList.size() > 0) {
            insert taskList;
        }
}
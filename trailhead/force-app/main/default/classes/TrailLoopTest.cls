@isTest
private class TrailLoopTest {

    @isTest
    public static void testLoop() {
        User usr = [SELECT Id FROM User WHERE profileId IN (SELECT Id FROM Profile 
                                                           where name='System Administrator') LIMIT 1];
        
        System.runAs(usr) 
        {
            Account a = new Account(name='Testtask');
            insert a;
            List<Task> tasks = new List<Task>{};
                for(Integer i = 0; i < 10; i++) 
            {
                Task t = new Task(Subject='Testing Loop'+i,Status='Updated',WhatId=a.Id);
                tasks.add(t);
            }
            insert tasks;
            
            test.startTest();
            TrailLoop.AllBadThings(a);
            test.stopTest();
        
        }
    }    
        
   
}
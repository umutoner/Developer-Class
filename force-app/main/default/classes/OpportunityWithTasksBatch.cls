public class OpportunityWithTasksBatch implements Database.Batchable <SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator oppList = database.getQueryLocator([select id,name, lastmodifieddate from opportunity where stagename != 'Closed Lost' and stagename != 'Closed Won' and lastmodifieddate < LAST_n_DAYS:7 ]);  
        
        system.debug(oppList);
        return oppList;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
     List<Task> UpdateTaskList = New List<Task>();
        for (Opportunity opp : Scope) {
         task t = new Task();
         t.WhatId = opp.id;
         t.subject = system.label.Tasks_Subject;
         t.OwnerId = opp.OwnerId;
         t.Status = 'In Progress';
         t.Description = system.label.Tasks_Comments;
         if (opp.CloseDate<date.today()) {
             t.ActivityDate = date.today(); 
         } else {
             t.ActivityDate = opp.CloseDate.addDays(-2);
         }
         UpdateTaskList.add(t);
         count++;
     }
    if (!UpdateTaskList.isEmpty()) {
        update UpdateTaskList;
    } 
      }
                 
    
    public void finish(Database.BatchableContext bc){
        system.debug('done with updating all tasks');
        system.debug('Total number of created tasks = '+ count);
    }
}
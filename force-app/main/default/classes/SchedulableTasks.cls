public with sharing class SchedulableTasks implements Schedulable {
    public void execute(SchedulableContext sc){
       OpportunityWithTasksBatch owt = new OpportunityWithTasksBatch();
       Database.executeBatch(owt);
        
    }
}
public with sharing class SchedulableOpportunityUpdate implements Schedulable {
    public void execute(SchedulableContext sc){
       OpportunityBatch ob = new OpportunityBatch();
       Database.executeBatch(ob);
        
    }
}
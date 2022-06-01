public class OpportunityBatch implements Database.Batchable <SObject>{

    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, name, stageName from Opportunity where StageName = 'Closed Lost']);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
      if (scope.size()>0) {
          delete scope;
      }
                 
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done with deleted all closed lost opportunities');
    }
}
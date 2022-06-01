public class AccountsBatchAssignment implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, description from account]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        list<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            acc.description =  'updated via batch apex';
            updateAccounts.add(acc);              
        }
        if(!updateAccounts.isEmpty())
            update updateAccounts;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done with updating ALL the ACCOUNTS');
        //Calling another batch from this batch...
        ContactBatchAssignment conBatch = New ContactBatchAssignment();
        id batchId = Database.executeBatch(conBatch);
    }
    
}
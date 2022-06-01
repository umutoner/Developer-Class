public with sharing class AccConSchedulableAssignment implements Schedulable{

    public void execute(SchedulableContext SC) {
        AccountsBatchAssignment acc = new AccountsBatchAssignment();
              // scheduled to work every one hour
        string jobId = system.schedule('scheduled update', '0 0 0/1 1/1 * ? *', acc);
    }
}

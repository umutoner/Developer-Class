public with sharing class AccountsQueueableAssignment implements Queueable {
    public List<Account> acc = new List<Account>();
    public AccountsQueueableAssignment(List<Account> acc) {
        this.acc = acc;
    }
    public void execute(QueueableContext context){
        for (Account eachAcc : acc) {
            eachAcc.description = 'updated via queueable apex!';
        }
        update acc;

        id jobId = system.enqueuableJob(new ContactQueueableAssignment());
    }
}

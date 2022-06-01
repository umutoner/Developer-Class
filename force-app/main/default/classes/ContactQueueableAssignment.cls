public with sharing class ContactQueueableAssignment implements Queueable {
    public List<Contact> cc = new List<Contact>();

    public ContactQueueableAssignment(List<Contact> cc) {
        this.cc = cc;
    }
    public void execute(QueueableContext context){
        for (Contact eachCc : cc) {
            eachCc.description = 'updated via queueable apex!';
        }
        update cc;
    }
}

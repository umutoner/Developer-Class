public class ContactBatchAssignment implements Database.Batchable<SObject>, Database.stateful {
    integer counter=0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, name, status__c from contact where status__c='completed']);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<contact> scope){
        list<contact> deletedContacts  = new list<contact>();
        for (contact con: scope) {
            deletedContacts.add(con);
            counter++;             
        }
        if(!deletedContacts.isEmpty()){
            delete deletedContacts;
        }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Total deleted Contacts = '+ counter);
        
    }
    
}
public with sharing class AccountsBatchHW implements Database.Batchable<SObject>, Database.stateful{
    public integer count = 0;
    public Database.QueryLocator start(database.BatchableContext bc) {
        database.QueryLocator q1 = database.getQueryLocator([select id, name, Number_of_Contacts__c, (Select id from Contacts) from account]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, list<Account> scope){
        list<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            acc.Number_of_Contacts__c = acc.Account.size();
            updateAccounts.add(acc);
            count++;
    }
    if(!updateAccounts.isEmpty()){
        system.debug('count in execute method: '+ count);
        update updateAccounts;
}
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done with updating All the ACCOUNTS');
        system.debug('total updated records= '+ count);
        
        Messaging.sendEmail('Apex job completed');
    }
}

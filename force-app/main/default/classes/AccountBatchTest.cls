@isTest
public with sharing class PurgeMyEventsTest {
    @isTest
    private static void testMethod() {
        //START STEP 1: PREPARE DATA 
        list<MyEvent__C> listMyEvents = new list<MyEvent__C>();
        Event_Organizer__c evo = new Event_Organizer__c();
        
        MyE.Name = 'TEST MyEvent 0';
        MyE. = 'asci-1';
        listMyEvents.add(MyE);

        for (Integer i = 1; i < 300; i++){
            MyEvent__C me = new MyEvent__C();
            me.Name = 'TEST ACC'+i;
            
            listMyEvents.add(me);
        }
        
        if(!listAcc.isEmpty()){
            insert listAcc;
        }
        //END STEP 1
        //step 2
        test.startTest();
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab, 501);
        test.stopTest();

        //ASSERT
        list<account> accounts = [select id, description from account];
        for (account a : accounts) {
            system.assert(a.Description.containsIgnoreCase('batch'));
        }

    }
}
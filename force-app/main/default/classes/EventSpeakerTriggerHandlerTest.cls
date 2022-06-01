@isTest
private class EventSpeakerTriggerHandlerTest {
    
    @testSetup
     static void prepareData() {
        Event_Organizer__c organizer = new Event_Organizer__c();
            organizer.name = 'Test Organizer';
            organizer.phone__c = '123321123321';
            organizer.email__c = 'gildo@fhg.com';

        insert organizer;

        MyEvent__c testEvent = new MyEvent__c();
            testEvent.name__c = 'Test Event';
            testEvent.event_organizer__c = organizer.id;
            testEvent.Start_Date_Time__c = Datetime.now().addDays(1);
            testEvent.End_Date_Time__c = Datetime.now().addDays(4);
            testEvent.Max_Seats__c = 100;
            testEvent.Live__c = True;
            
        insert testEvent;

        Speaker__c speaker1 = new Speaker__c();
            Speaker1.name = 'Test Speaker';
            Speaker1.email__c= 'spk@sdf.com';
            Speaker1.phone__c= '2344322334';
        insert speaker1;

        Speaker__c speaker2 = new Speaker__c();
            Speaker2.name = 'Test Speaker2';
            Speaker2.email__c= 'abc@sdf.com';
            Speaker2.phone__c= '299922334';
        insert speaker2;
            
        Event_Speaker__c eventSpeaker = new Event_Speaker__c();
            eventSpeaker.event__c = testEvent.id;
            eventSpeaker.speaker__c = speaker1.id;

        insert eventSpeaker;

    }
    @isTest
        static void pozitiveScenario(){
            Event_Speaker__c myList = [SELECT event__c, speaker__c FROM Event_Speaker__c LIMIT 1];
            Boolean isFailed = False;
            Test.startTest();
            Try{
            insert new Event_speaker__c(Event__c=myList.Event__c, speaker__c = myList.speaker__c);    
            }Catch(exception exc){
            isFailed = True;
        }
            Test.stopTest();

            system.assertEquals(isfailed, true);
        }
        @isTest
        static void negativeScenario(){
            Speaker__c newSpeaker = [Select id, name from Speaker__c Where name = 'Test Speaker2' LIMIT 1 ];
            MyEvent__c newEv = [SELECT name__c FROM MyEvent__c LIMIT 1];
            Event_Speaker__c NewEvs = New Event_Speaker__c();
            NewEvs.event__c = newEv.id;
            NewEvs.speaker__c = newSpeaker.id;

            Test.startTest();
            insert NewEvs;
            Test.stopTest();

            system.assertNotEquals(newEvs.Id, null);
        }
}

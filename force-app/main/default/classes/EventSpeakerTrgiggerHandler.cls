public with sharing class EventSpeakerTrgiggerHandler {

    public static void DublicateEventSpeaker(List<Event_Speaker__c> esTriggerNew) {

    Map<String,Event_Speaker__c> esMap = New Map<String,Event_Speaker__c>();

    Set<id> eventsIds = New Set<Id>();
    Set<id> speakerIds = New Set<Id>();
    for (Event_Speaker__c es:esTriggerNew) {
        string UniqueKey = string.valueOf(es.Event__c)+string.valueOf(es.Speaker__c);
        esMap.put(UniqueKey, es);

        eventsIds.add(es.Event__c);
        SpeakerIds.add(es.Speaker__c);
    }
    List<Event_Speaker__c> OnSystem = [SELECT id, event__c, speaker__c FROM Event_Speaker__c 
                                        WHERE Event__c IN: eventsIds AND speaker__c IN:speakerIds ];

    for (Event_Speaker__c esp : OnSystem) {
        string newUnique = string.valueOf(esp.Event__c)+string.valueOf(esp.Speaker__c);
       
        if (esMap.keyset().contains(newUnique)) {
            esMap.get(newUnique).addError('Duplicate record found with id: '+string.valueOf(esp.id));
        }
    }                                              
}
}

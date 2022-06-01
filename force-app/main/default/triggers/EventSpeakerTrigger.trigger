trigger EventSpeakerTrigger on Event_Speaker__c (before insert, before update, after insert, after update) {

    if (trigger.isBefore) {
        if (trigger.isUpdate || trigger.isInsert) {
            EventSpeakerTrgiggerHandler.DublicateEventSpeaker(trigger.new);
        }
    }
}
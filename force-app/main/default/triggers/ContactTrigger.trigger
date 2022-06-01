trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}
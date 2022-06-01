trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
    system.debug('We are in the triggers');
    system.debug(trigger.new);
    system.debug(trigger.newMap.values());
    if (trigger.isAfter) {
        system.debug('We are in after triggers');
        if (trigger.isUpdate) {
            system.debug('We are in after-update triggers');
        }
        if (trigger.isInsert) {
            system.debug('We are in after-insert triggers');
            for (Case eachCase : trigger.new) {
                system.debug('Case# '+ eachCase.CaseNumber + ' was created with id ' + eachCase.Id + ' on '+ eachCase.CreatedDate);    
            }
            
        }
    }
    if (trigger.isBefore) {
        system.debug('We are in before triggers');
        if (trigger.isUpdate) {
            system.debug('We are in before-update triggers');
        }
        if (trigger.isInsert) {
            system.debug('We are in before-insert triggers');
        }
    }


 
}
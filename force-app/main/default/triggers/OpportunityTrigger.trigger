trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    if (trigger.isInsert && trigger.isBefore) {
        OppTrigHandler.CreateOp(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        OppTrigHandler.UpdateOpp(trigger.new, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        OppTrigHandler.StageNameUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}
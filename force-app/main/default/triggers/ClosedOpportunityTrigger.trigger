trigger ClosedOpportunityTrigger on Opportunity (before update, before insert) {
   
    OppTrigHandler.oppCloseDateValidation(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    
}
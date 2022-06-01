trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

    }
    if (trigger.isAfter && trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
    }
}
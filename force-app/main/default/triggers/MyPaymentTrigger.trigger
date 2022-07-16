trigger MyPaymentTrigger on MyPayment__c (after insert, after update, after delete, after undelete) {

    MyPaymentTriggerHandler.UpdateNumberOfOnlinePayments(Trigger.oldMap,trigger.newMap, Trigger.New, Trigger.old); 
    }
    
    

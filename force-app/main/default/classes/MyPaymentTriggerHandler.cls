public with sharing class MyPaymentTriggerHandler {
     public static void UpdateNumberOfOnlinePayments(Map<id, MyPayment__c> ptTriggerOldMap, Map<id, MyPayment__c> ptTriggerNewMap, List<MyPayment__c> ptTriggerOld, List<MyPayment__c> ptTriggerNew) {
        
        Set<Id> ids = new Set<Id>();
            if (ptTriggernew!=null) {
                for (MyPayment__c ep : ptTriggerNew) {
                    ids.add(ep.Customer__c);   
            }
        }
            if(ptTriggerOld!=null){
                for (MyPayment__c ep : ptTriggerOld){
                    ids.add(ep.Customer__c);
                }
            }
        List<MyCustomer__c> updatedCustomers = [SELECT id, name, (Select id, mode__c FROM MyPayments__r Where Mode__c='Online') FROM MyCustomer__c WHERE id in:ids];
            
        if (!updatedCustomers.isEmpty()) {
            
            for (MyCustomer__c cus : updatedCustomers) {
                cus.Number_Of_Online_Payments__c= cus.MyPayments__r.size();
            }
            update updatedCustomers;
        }
    }
}
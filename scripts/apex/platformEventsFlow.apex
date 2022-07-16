Custom_Notification__e evt = new Custom_Notification__e();
evt.Message__c= 'Yaaay!... Leads have been processed successfully';
evt.Initiator__C= 'Leads processing Batch'; 
EventBus.publish(evt);
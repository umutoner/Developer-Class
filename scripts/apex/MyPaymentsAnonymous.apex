MyCustomer__c mcs2= new MyCustomer__c();
        mcs2.name = 'Test man2';
        
insert mcs2;
MyPayment__c mpy = new MyPayment__c();
        mpy.amount__c = 400;
        mpy.Customer__c = mcs2.id;
        mpy.mode__c = 'Online';
        
        insert mpy;
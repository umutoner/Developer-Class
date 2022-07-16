@isTest
public with sharing class MyPaymentTriggerHandlerTest {
    
    @TestSetup
    static void prepareData(){
        list<MyCustomer__c> cusList= new list<Mycustomer__c>();
        for (Integer i = 0; i < 50; i++) {
              Mycustomer__c c1= new Mycustomer__c();
              c1.name= 'Test Customer'+i;
             
              cusList.add(c1);
        }
        insert cusList;
      
        list<Mypayment__c> pList = new list<Mypayment__c>();
      
        for (Mycustomer__c cust1:cusList) {
            Mypayment__c p1= new Mypayment__c();
            p1.customer__c=cust1.id;
            p1.mode__c='Cash';
            pList.add(p1);
      
            Mypayment__c p2= new Mypayment__c();
            p2.customer__c=cust1.id;
            p2.mode__c='Online';
            pList.add(p2);
            
        }
          insert pList; 
            
    }
    @isTest
    public static void MyPaymentsUpdateTest() {
        MyCustomer__c myc = [SELECT Id, name, Number_Of_Online_Payments__c from MyCustomer__c Limit 1];
        
        myc.name = 'Test Test';
        Test.startTest();
        update myc;
        Test.stopTest();

        system.assertEquals('Test Test', myc.name );
    }
    @istest
    public static void MyPaymentsInsertTest(){
       MyCustomer__c testCustomer = [Select id, Number_Of_Online_Payments__c from MyCustomer__c Limit 1];
       
        MyPayment__c mpy = new MyPayment__c();
        mpy.amount__c = 400;
        mpy.mode__c = 'Online';
        mpy.customer__c = testCustomer.id;
      
    
           system.assertEquals(1, testCustomer.Number_Of_Online_Payments__c);    
    }
}

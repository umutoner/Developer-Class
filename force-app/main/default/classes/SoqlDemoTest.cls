@isTest
public class SoqlDemoTest {
    @isTest 
    public static void testMethod1() {
        Account acc1 = new Account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';
        Account acc2 = new Account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';
        Account acc3 = new Account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Banking';

        List<Account> ListAcc = new List<Account>{Acc1, Acc2, Acc3};
        insert ListAcc;

        List<Contact> ListContact = New List<Contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.LastName = 'Test Soql';
            if(i<100){
                c.accountid = acc1.id;
            } else if(i<200){
                c.accountid = acc2.id;
            } else if (i<300){
                c.accountid = acc3.id;
            }
            ListContact.add(c);
        } 
        insert ListContact;
        test.startTest();
        SoqlDemo.childToParent_Soql1();
        test.stopTest();
    }
    
}

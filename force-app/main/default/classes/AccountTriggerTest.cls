@isTest
public class AccountTriggerTest {
    @isTest
    public static void TestMethod1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c= 'Yes';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'No';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        acc3.Active__c= 'No';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        for (Account acc: listAcc) {
            acc.Description= 'updated in test';
            acc.Active__c= 'Yes'; 
        }
        update listAcc;
        list<account> accs = [select id, name, description from account];
        system.assertEquals('Account is now active. Enjoy!', accs[1].description);
    }
}

@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        list<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 100; i++) {
            account a = new account(name = 'test'+i , phone='9872345483');
            accounts.add(a);
        }
    insert accounts;
    }
@isTest
  static void methodName(){
      list<Account> accs = [Select id, name from account];
      test.startTest();
      AccountQueueableExample accqbj = new AccountQueueableExample(accs);
      system.enqueueJob(accqbj);
      test.stopTest();

      integer count =[Select count() from account where name like '%SI%'];
      system.assertEquals(100, count);
  }  

    
}

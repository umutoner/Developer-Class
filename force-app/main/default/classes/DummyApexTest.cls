@isTest
public class DummyApexTest {
    @isTest
    public static void IncreaseRevenueTest() {
        List<Account> accList = new List<Account>();
        for (Integer i = 1; i < 10; i++) {
        account acc = new account();
        acc.name = 'test'+i;
        acc.AnnualRevenue = 150000 * i;
        accList.add(acc);    
        }
        insert accList;
        Test.startTest();
        DummyApex.Increaserevenue(accList);
        Test.stopTest();
        System.assertEquals(135000, accList[0].AnnualRevenue);
        System.assertEquals(270000, accList[1].AnnualRevenue);
        System.assertEquals(405000, accList[2].AnnualRevenue);
    }
}

@isTest
public class DmlDemoTest {
    @isTest
    public static void DmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc = [Select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
}

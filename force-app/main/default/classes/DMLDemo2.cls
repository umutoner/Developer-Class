public class DMLDemo2 {
    public static void dmlMultipleRecordUpdate_Right() {
        List<Account> listAcc  = [SELECT name, id, description FROM Account ORDER BY CreatedDate Limit 150];
        List<Account> updateAccount = new List<Account>();
        
        for (Account acc : listAcc) {
            acc.name += 'VB';
            acc.Description = 'Update via bulk DML';
            updateAccount.add(acc);
        }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
        }
    }
}

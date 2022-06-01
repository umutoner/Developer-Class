public with sharing class AccountManager {
    public static void accountDescriptionUpdate() {
        list<Account> updateList = new List<Account>();
        updateList = [select name, CreatedDate from account order by createddate desc limit 5];
        
        for (Account eachAcc : updateList) {
            eachAcc.Description = eachAcc.name+eachAcc.CreatedDate;
            
        }
        
        update updateList;
    }
}

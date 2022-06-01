public class AccountInfo {
    //Method shows all accounts' names and related oppotunities where the opportunity close date is in future.
    public static void showAccounts() {
        List<Account> myList = [SELECT name, Id, (SELECT name FROM Opportunities WHERE closeDate > Today) FROM Account];
        system.debug('Account names with opportnities where close date is in the future' + myList);
        
        for (Account eachmyList: myList) {
            system.debug('List of Accounts with Opps future close date ' + eachmyList.name);
                for (Opportunity eachOpp : eachmyList.Opportunities) {
                    system.debug('Opportunity name= '+ eachOpp.name);                    
                }
    }
    
        
    }
}

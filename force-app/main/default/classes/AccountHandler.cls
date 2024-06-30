public with sharing class AccountHandler {

    public static List<Account> insertNewAccount(List<string> accNames) {
        List<Account> newAcc = new List<Account>();      
        if(!accNames.isEmpty()){
            for (String eachString: accNames) {
                Account acc = new Account (); 
                acc.Name = eachString;
                
                newAcc.add(acc);           
            }
            insert newAcc;
            return newAcc; 
        }else{
            System.debug('Please enter a full string list');             
            return null; 
        }
    }    
}




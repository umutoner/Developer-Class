/*Create a class named as AccConAndOppOperations and Write methods for each of the following 
requirements: 
1. Write the logic to fetch and return all the accounts. Include account name, annual revenue, 
type, and source of account. 
2. Find all the opportunities which has Lead Source as 'Web' and Stage as 'Closed Lost'. Make it 
dynamic so that it works for other stages and Lead sources as well. 
3. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the 
Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity 
record should be printed in different line. 
4. Write a method which should return the account record after creating it. Take Name, Annual 
Revenue, Type as input parameters and populate the values in account record. If Name is not 
provided, then do not create the account and show a message like Account without name 
cannot be created.
 */
/*. 1 Prepare a method which returns the sum of all the closed won opportunities Amount present in 
the org. 
2. Prepare a method which will return all the Accounts for which at least a closed Won 
Opportunity is present. Make it dynamic if we want to bring account for other opportunity 
stageNames. 
3. Prepare a method which will return all the Accounts for which at least a contact is present.*/

public class AccConAndOppOperation {
//     public static list<Account> fetchAllAccounts() {
//         list<Account> acc = [SELECT name, AnnualRevenue, Type, AccountSource FROM Account];
//         system.debug(acc);
//         return acc;
//     }
//     Public static void fetchOpportunity(string src, string stg){
//         List<Opportunity> oppList = [SELECT name FROM opportunity WHERE LeadSource=:src and stageName=:stg];
//         system.debug(oppList);
//     }
//     public static void printAll(){
//         list<Account>printAccWithOpps = [SELECT name, AnnualRevenue, (SELECT name, amount FROM Opportunities WHERE stageName= 'Closed Won' ) FROM Account WHERE Type= 'Customer - Direct' ];
        
//         for (Account eachAcc : printAccWithOpps) {
//             string accName = eachAcc.Name;
//             decimal annualrev = eachAcc.AnnualRevenue;
//             system.debug('Account Name = '+ accName + ' Annual Revenue is ' + annualrev );
            
//             for (Opportunity eachOpp :eachAcc.Opportunities ) {
//                 string OppName = eachOpp.Name;
//                 system.debug('Opportunity name => ' + OppName);
                
//             }
//         }
        
    // }
    // Public static Account createAccount(string acName, integer annualr, string acType){
    //     Account acc = new Account(Name=acName, AnnualRevenue=annualr, Type=acType);
        
    //     if (string.isEmpty(acName)) {
    //         system.debug('Account without name cannot be created.');
    //     } else {
    //        insert acc;
    //     }
    //     return acc;
    // }
    // public static decimal sumAllClosedWonOpps(){
    //     List<Opportunity> ClosedWons = [SELECT name, amount FROM Opportunity WHERE StageName='Closed Won' ];
        
    //     decimal total=0;    
    //     for (Opportunity eachOpp : ClosedWons) {
    //         total+=eachOpp.amount;
    //     }
    //     system.debug(total);
    //     return total;
    // }
    // public static list<AggregateResult> aggOppSumAll(){
    //     List<AggregateResult> ClosedWons2 = [SELECT Sum(amount) FROM Opportunity WHERE StageName='Closed Won' ];
    //     System.debug(ClosedWons2);
    //     return ClosedWons2;
    // }
    // public static List<Account> accsWithClosedWonOpps (string str){
    //     List<Account> AccWithClosedWon = [SELECT name, id FROM Account WHERE id in(SELECT Accountid FROM Opportunity WHERE StageName=:str)];
    //     System.debug(AccWithClosedWon);
    //     return AccWithClosedWon;
    // }
    // public static List<Account> AllAccountsWithContacts(){
    //     List<Account> accWithContact = [SELECT name, id FROM Account WHERE id in(SELECT AccountId FROM Contact)];
    //     system.debug(accWithContact);
    //     return accWithContact;
    // }
    // public static void AddContactFromAccId(string myId){
    //     account acc = [SELECT id, name from account where id=:myId];
    //     Contact con = new Contact();
    //     con.LastName = acc.Name;
    //     con.AccountId= acc.Id;
    //     system.debug(con);
        
    //     insert con;
    // }
    // public static void updateOppDesc(){
    //     List<Opportunity> updateOppList = [SELECT name, id, Amount FROM Opportunity ORDER BY Amount desc LIMIT 10];
    //     for (Opportunity eachOpp : updateOppList) {
    //         eachOpp.Description = 'This is one of the top 10 opportunity. Please work on this properly';
    //     }
    //     update updateOppList;
    // }
    // public static List<Opportunity> createNnumberOpps(integer n){
    //     Account acc = [SELECT id, name, AnnualRevenue FROM Account WHERE id= '0018b000020QEdvAAG'];
    //     List<Opportunity> oppor = new List<Opportunity>();
    //     date today = date.today();
    //     if (n != 0){
    //         for (Integer i = 0; i < n; i++) {
    //         Opportunity opp = new Opportunity();    
    //         opp.Name = acc.Name;
    //         opp.AccountId = acc.Id;
    //         opp.Amount = acc.AnnualRevenue/n;
    //         opp.StageName= 'Prospecting';
    //         opp.CloseDate = today.addYears(3);
    //         oppor.add(opp);

    //         }
    //     }else{
    //         system.debug('Please tell us how many opportunities needs to be created');
    //     }
    //     insert oppor;
    //     return oppor;
    // }
    // public static void updateContactFromAcc(){
    //     List<Account> acc = [select name, Id from Account where Id not In (select AccountId from Contact)];
    //     List <Contact> con = new List <Contact>();
    //     for (Account eachAcc : acc) {
    //         contact cony = new Contact();
    //         cony.LastName = eachAcc.name;
    //         cony.AccountId = eachAcc.id;
    //         con.add(cony);
    //     }
    //     insert con;
    // }
    public static void deleteOppsLessThan20k(){
        list<Opportunity> opp = [select name, amount from opportunity where amount< 20000];
        delete opp;
    }
}

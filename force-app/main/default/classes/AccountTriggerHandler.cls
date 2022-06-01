public class AccountTriggerHandler {

    public static void createOppWithNewAcc(List<account> accTriggerNew, List<account> accTriggerOld,Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
// Get all the triggered account into the list...
        List<Account> tacc = new List<Account>();
        for (Account acc : accTriggerNew) {
            tacc.add(acc);
        }
// Create new opportunity(ies) and insert them...
// Don't forget to assign the required fields on opportunity object.
// Same with related contact creation...        
        List<Opportunity> newOpp = New List<Opportunity>();
        List<Contact> newC = new List<Contact>();
        for (Account eaId: tacc) {
            Opportunity opp = new Opportunity();
            opp.AccountId = eaId.Id;
            opp.CloseDate = date.today()+90;
            opp.Name = eaId.Name;
            opp.StageName = 'Prospecting';
            newOpp.add(opp);

            Contact nc = new Contact();
            nc.AccountId = eaId.id;
            nc.LastName = eaId.name;
            newC.add(nc);
        }
        if (!newOpp.isEmpty()) {
            insert newOpp;
        }
        if (!newC.isEmpty()) {
            insert newC;
        }

        

    }
    
    // public static void checkAccountName(List<account> accTriggerNew, List<account> accTriggerOld,Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

    //     List<Account> oldAccs = [Select name From Account];
    //     List<String> oldAccNames = New List<String>();
        
    //     for (Account acc : oldAccs) {
    //         oldAccNames.add(acc.name);
    //    }
    //    for (Account eacc: accTriggerNew)
    //         if (oldAccNames.contains(eacc.name)) {
    //         eacc.name.addError('This name has taken please try other name');
    //    } else if (eacc.name != accTriggerOldMap.get(eacc.id).name) {
    //         eacc.name.addError('This name has taken please try other name');
    //    }
    // }
}

    // public static void addRelatedContact(List<account> accTriggerNew, List<account> accTriggerOld,Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
    //     List<Contact> ListCnt = New List<Contact>();
    //     for (Account acc : accTriggerNew) {
    //         contact cnt = new contact();
    //         cnt.LastName = acc.Name;
    //         cnt.AccountId = acc.Id;
    //         cnt.phone = acc.phone;
    //         listCnt.add(cnt);
    //     }
    //     if(!ListCnt.isEmpty()){
    //         insert listCnt;
    //     }
    // }
    // public static void updateOppsStageName(List<account> triggernew){
    //     /*Set<id> accids= new Set<Id>();//id leri for each loop la baslayip topla
    //         for( account acc:triggernew){
    //         accids.add(acc.id);
    //         }*/
           
            
    //     /*List<opportunity> oppList=[select id, name from Opportunity where stageName !='Closed Won' and accountId in : accids];*/
    //     List<opportunity> oppList=[select id, name from Opportunity where stageName !='Closed Won' and accountId =: triggernew]; 
    //     for(opportunity opp: oppList){
    //             opp.stageName='Closed Lost';
    //         }
    //     if(!oppList.isEmpty())
    //     update oppList;
    //     }
        
   
    // When the Annual revenue field value is reduced from the previous value then show the following 
// message: ‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record.
//     public static void updateAccountAnnualRevenue(List<account> accTriggerNew, List<account> accTriggerOld,Map<id, account> accTriggerNewMap,
//                                             Map<id, account> accTriggerOldMap){
//         for (Account acc : accTriggerNew) {
//             if (acc.AnnualRevenue != accTriggerOldMap.get(acc.id).AnnualRevenue) {
//                 if (acc.AnnualRevenue < accTriggerOldMap.get(acc.id).AnnualRevenue || acc.AnnualRevenue == null) {
//                     acc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
//                 }
//             }
//             // if (acc.AnnualRevenue < accTriggerOldMap.get(acc.id).AnnualRevenue || acc.AnnualRevenue == null) {
            
//             //     acc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
//             // }
//         }   
//     }
// }
//     public static void updateAccountDescription(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){
    
//          for(account eachAcc: accTriggerNew){
//             boolean updateDesc = false;
//             if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
//                 updateDesc = true;
//             }
//             if(accTriggerOldMap != null){
//                 Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
//                 string oldAccountActive = oldAccount.Active__c;
//                 //check if active is updated
//                 //active is changed to 'Yes'
//                 if(eachAcc.Active__c == 'Yes' &&
//                     oldAccountActive != 'Yes'
//                 ) {
//                     updateDesc = true;
//                 }
//             }
//             if(updateDesc){
//                 eachAcc.Description = 'Account is now active. Enjoy!';
//             }
//         }
//     }
// }
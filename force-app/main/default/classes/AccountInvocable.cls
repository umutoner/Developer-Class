public with sharing class AccountInvocable {
    @InvocableMethod(label ='Delete closed opps'
    Description = 'Deletes all the opportunities when an account goes inactive or hold'
    Category = 'Account')
    public static void deleteOpportunities(List<id> accountIds) {
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE AccountId IN: accountIds AND 
                                StageName IN ('Closed Won', 'Closed Lost') ];
        if(!opps.isEmpty())
        delete opps;
    }
}

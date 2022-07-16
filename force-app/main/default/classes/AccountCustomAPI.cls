@restResource(urlMapping='/AccountCustom/*')
global with sharing class AccountCustomAPI {
    @HttpGet
    global static Account getAccountId(){
        
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string accountId = uri.substring(idStartIndex);
        system.debug('account id: ' + accountid);
        account acc = [SELECT name FROM Account WHERE id = :accountId];
        return acc;
    }
    
     @HttpPost
    global static id createAccount(String name, String rating, String Website, String phoneNumber, decimal annualRevenue, string contactFirstName, string contactLastName, string contactPhone) {
        
        Account acc = New Account();
        acc.name = name;
        acc.rating = rating;
        acc.website = acc.website;
        acc.phone = phoneNumber;
        acc.AnnualRevenue = annualRevenue;
      
        Contact con = new Contact();
        con.FirstName = 'Uma';
        con.LastName = 'Oneir';
        con.phone=  '24344334';
        con.AccountId = acc.id;

        insert acc;
        return acc.Id;

    }

}




















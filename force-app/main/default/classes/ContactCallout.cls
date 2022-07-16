public with sharing class ContactCallout {
    @future(callout=true)
    public static void sendDataGo (List<id> contactIds){
     List<Contact> con = [Select Name, Email, Gender__c, Status__c From Contact Where id = :contactIds[0]];
     UserInfoWrapper contactToSend = new UserInfoWrapper();
         contactToSend.name = con[0].name;
         contactToSend.email = con[0].email;
         contactToSend.gender = con[0].Gender__c;
         contactToSend.status = con[0].Status__c;
     string jsonString = JSON.serialize(contactToSend);
     system.debug(jsonString);    
 
     string endpoint = 'https://gorest.co.in/public/v2/users';
     string token = '70e1f461fd475135683473e734663791d988ca49336b3a1002405be2ff00ed29';
     
     HttpRequest request = new HttpRequest();
     request.setHeader('Content-Type', 'application/json; charset=utf-8');
     request.setHeader('Authorization', 'Bearer ' + token); 
     request.setMethod('POST');
     request.setEndpoint(endpoint);
     request.setBody(jsonString);
 
     Http http = new Http();
     HttpResponse response = http.send(request);
     system.debug('status code ' + response.getStatusCode());
     system.debug('response ' + response.getBody());
        // create a log => It can be info in case of success, error in case of error 
     if(response.getStatusCode()==201){
        system.debug('Success!!');
     } else{
        CommonUtilities.createLog('Error', 'ContactCallout.SendDataGo', 'Integration', response.getStatus(), response.getBody());
     }
  
    }
    public class UserInfoWrapper{
        public string name;
        public string email;
        public string gender;
        public string status;
   }
}

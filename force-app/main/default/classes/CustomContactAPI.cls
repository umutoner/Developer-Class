@restResource(urlMapping='/ContactCustom/*')
global with sharing class CustomContactAPI {
    @HttpGet
    global static Contact getContactId(){
        system.debug('custom contact api call success.');
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contact id: ' + contactid);
        contact c = [SELECT name, email, Phone, Account.Name FROM Contact WHERE id = :contactId];
        return c;
    }
    @HttpPost
    global static id createContact(String fName, String lName, String emailId, String phoneNumber, String accountId) {
        Contact con = new Contact();
        con.FirstName = fName;
        con.LastName = lName;
        con.Email= emailId;
        con.Phone= phoneNumber;
        con.AccountId = accountId;

        insert con;
        return con.Id;

    }
    @HttpDelete
    global static string deleteContactId(){
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contact id: ' + contactid);
        contact c = new contact(id=contactId);
        delete c;
        return 'contact deleted with id: ' + contactId;
    }
    @HttpPatch
    global static string updateContactId(string emailId,string PhoneNumber){
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contact id: ' + contactid);
        contact c = new contact(id=contactId, Email= emailId, phone=PhoneNumber);
        update c;
        return 'contact updated with id: ' + contactId;
    }
    // @HttpPut
    // global static String upsertContact(Contact con){
    //     String returnString;
    //     if(con.Id == null){
    //         returnString = 'Contact created with id: ';
    //     } else {
    //         returnString = 'Contact update with id: ';
    //     }

    //     upsert con;
    //     return returnString + con.id;
    // }
    @httpPut
    global static List<id> upsertContact(List<Contact> cons){
       
        upsert cons;

        list<id> ids = new list<id>();
        for (contact con : cons) {
            ids.add(con.id);
        }
        return ids;
    }

}

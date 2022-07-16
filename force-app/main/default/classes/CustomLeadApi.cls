@restResource(urlMapping='/LeadCustom/*')
global with sharing class CustomLeadApi {
    @HttpGet
    global static lead CustomLeadId() {
            system.debug('custom contact api call success.');
            RestRequest request = RestContext.request;
            system.debug('URI : '+ request.requestURI);
            string uri = request.requestURI;
            integer idStartIndex = uri.lastIndexOf('/')+1;
            system.debug('id start index:' +idstartIndex);
            string leadID = uri.substring(idStartIndex);
            system.debug('lead id: ' + leadID);
            Lead l = [SELECT id, name FROM Lead WHERE id = :leadID];
            return l;   
    }
    @HttpPost
    global static id createLead(String fName, String lName, String company, String status) {
        Lead ld = new Lead();
        ld.FirstName = fName;
        ld.LastName = lName;
        ld.Company= company;
        ld.status= status;
       

        insert ld;
        return ld.Id;
    }
    @HttpDelete
    global static string deleteLeadId(){
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string leadId = uri.substring(idStartIndex);
        system.debug('lead id: ' + leadid);
        lead c = [Select name, id From Lead Where Id =: leadId];
        delete c;
        return 'lead deleted with id: ' + leadId;
    }

    @HttpPatch
    global static string updateLeadId(string emailId,string phoneNumber){
        RestRequest request = RestContext.request;
        system.debug('URI : '+ request.requestURI);
        string uri = request.requestURI;
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('id start index:' +idstartIndex);
        string leadId = uri.substring(idStartIndex);
        system.debug('lead id: ' + leadId);
        lead c = new lead(id=leadId, Email= emailId, phone=phoneNumber);
        update c;
        return 'lead updated with id: ' + leadid;
    }
    @HttpPut
    global static list<id> UpsertLeads(list<Lead> leadsList){
        upsert leadsList;
        
        list<id> ids = new list<id>();
        
        for (lead lds : leadsList) {
            ids.add(lds.id);          
        }
    
        return ids;
    }

}

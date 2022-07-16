@isTest
public with sharing class PopulationHttpCalloutMock implements HttpCalloutMock{
    
    public HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = New HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"data":[{"ID  Nation":"01000US","Nation":"United  States","ID Year":2019,"Year":"2019","Population":328239523,"Slug Nation":"united-states"}]}');
        response.setStatusCode(200);
        return response;
    }
}


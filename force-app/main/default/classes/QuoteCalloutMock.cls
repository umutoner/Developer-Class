@isTest
global class QuoteCalloutMock implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"quote":"Who made up the term major label in the first place???"}');
        response.setStatusCode(200);
        return response;
    }
}
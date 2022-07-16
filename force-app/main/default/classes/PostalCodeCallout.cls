public with sharing class PostalCodeCallout {

    private static string GET_POSTALCODE_ENDPOINT=Callout_Info__mdt.getInstance('Get_PostalCode').EndPoint__c;

        // Pass in the endpoint to be used using the string url
        public static HttpResponse getCalloutResponseContents(string postalCode) {
      
          // Instantiate a new http object
          Http h = new Http();
      
           // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
          HttpRequest req = new HttpRequest();
          req.setEndpoint(GET_POSTALCODE_ENDPOINT+postalCode);
          req.setMethod('GET');
      
          // Send the request, and return a response
          HttpResponse res = h.send(req);
          system.debug(res.getBody());
          
          if (res.getStatusCode() == 200) {
            string postJSON = res.getBody();
            system.debug(postJSON);
                     
              Map<string, object> results = (Map<string, object>)JSON.deserializeUntyped(postJSON);
              system.debug(results);
              List<Object> details =(List<Object>) results.get('places');
              
              
        }else {
            system.debug('postal code do not exist ');
        }
        return res;
    }
}
 

    


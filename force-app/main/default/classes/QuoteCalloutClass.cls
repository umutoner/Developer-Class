public with sharing class QuoteCalloutClass {
    private static string GET_QUOTES_ENDPOINT=Callout_Info__mdt.getInstance('Quotes').EndPoint__c	;
    public static string HTTP_GETQUOTE='GET';
      //GET_QUOTES_ENDPOINT
  
        public static string fetchQuote() {
          //1. prepare request
          String quote;
          Http http = new Http();
          HttpRequest request = new HttpRequest();
          request.setEndpoint(GET_QUOTES_ENDPOINT);
          request.setMethod('GET');
          HttpResponse response = http.send(request);
          //If the request is successful, parse the JSON response.
          if (response.getStatusCode() == 200) {
              // Deserializes the JSON string into collections of primitive data types.
              Map<String, String> results = (Map<String, String>) JSON.deserialize(response.getBody(), Map<String, String>.class);
              quote = String.valueOf(results.get('quote'));
          } else {
              System.debug('Something Went Wrong!!!');
              quote = null;
          }
          return quote;
      
      }
  }
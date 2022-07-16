public with sharing class AnimalsCallouts {
    
    private static string GET_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('GET_ANIMALS').Endpoint__c;
    private static string POST_ANIMALS_ENDPOINT = CalloutInfo__mdt.getInstance('POST_ANIMALS').Endpoint__c;
    
    public static void fetchAnimals() {
        //1.Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod('GET');

        //2.Prepare http
        Http http = new http();

        //3.send request, which returns response
        HttpResponse response = http.send(request);

        //4.Process the response
        if (response.getStatusCode() ==200) {
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);

            Object ob = JSON.deserializeUntyped(animalsJSON);
            Map<String, object> results = (Map<String,Object>)ob;
            system.debug('Results = '+ results);

            List<Object> animals = (List<Object>) results.get('animals');
            system.debug('=============OBJECT ANIMALS LIST START==========');
            for (object a : animals) {
                system.debug(a);
            }
            system.debug('==============OBJECT ANIMALS END =================');
        } else{
            system.debug('something went wrong people');
            system.debug('failure');
        }
    }
    public static HttpResponse fetchAnimals2() {
        //1.Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_ANIMALS_ENDPOINT);
        request.setMethod('GET');

        //2.Prepare http
        Http http = new http();

        //3.send request, which returns response
        HttpResponse response = http.send(request);
        system.debug('status: '+ response.getStatus());
        system.debug('status code: '+ response.getStatusCode());

        //4.Process the response
        if (response.getStatusCode() ==200) {
            AnimalsCalloutResponse animalResponse = (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
        system.debug('====STRING ANIMALS LIST START=====');
        for (string a : animalResponse.animals) {
            system.debug(a);
        }
        system.debug('====STRING ANIMAL LIST END=====');  
        
        } else{
            system.debug('something went wrong people');
        }
        return response;
    }
    public static HttpResponse postAnimal() {
        //1. prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(POST_ANIMALS_ENDPOINT);
        request.setMethod('POST');
        string jsonReq = '{"name":"fluffykins"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        //2. prepare http
        Http http = new http();

        //3. send request, receive response
        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());
        //4. process the response
        if (response.getStatusCode() == 201) {
            system.debug('response ' + response.getBody());
            AnimalsCalloutResponse animalResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            system.debug('====STRING animals list START ======');
            list<string> allAnimals = animalResponse.animals;
            for (string a : allAnimals) {
                system.debug(a);
            }
            system.debug('====STRING animals list END ======');

        } else {
            string result = 'failed';
            system.debug('something went wrong people');
        }

        return response;
    }
}

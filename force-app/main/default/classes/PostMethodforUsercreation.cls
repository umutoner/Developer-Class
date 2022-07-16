public with sharing class PostMethodforUsercreation {
      
    public static HTTPResponse Usercreation() {

        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('POST');
        string jsonReq = '{"name": "Testing",   "job": "Software"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        Http http = new http();

        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());

        if (response.getStatusCode() == 201) {
            string namesJSON = response.getBody();
            system.debug(namesJSON);
            system.debug('response ' + namesJSON);
            
            Object ob = JSON.deserializeUntyped(namesJSON);
            Map<String, object> results = (Map<String,Object>)ob;
            system.debug('Results = '+ results);
            
            system.debug(results.get('name'));
    }else {
        string result = 'failed';
        system.debug('something went wrong people');
    }

    return response;
    }

    public static HTTPResponse Usercreation2() {
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://fakerestapi.azurewebsites.net/api/v1/Activities');
        request.setMethod('POST');
        string jsonReq = '{"id":  0, "title":  "string", "dueDate":  "2022-06-14T09:38:35.481Z", "completed":  true}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/json');

        Http http = new http();

        HttpResponse response = http.send(request);
        system.debug('status ' + response.getStatus());
        system.debug('status code ' + response.getStatusCode());

        if (response.getStatusCode() == 200) {
            string jobsJSON = response.getBody();
            system.debug(jobsJSON);
            system.debug('response ' + jobsJSON);
            
            Object ob = JSON.deserializeUntyped(jobsJSON);
            Map<String, object> results = (Map<String,Object>)ob;
            system.debug(results);
            system.debug('Results = '+ results.get('id'));
    }else {
        string result = 'failed';
        system.debug('something went wrong ');
    }

    return response;
    }
}

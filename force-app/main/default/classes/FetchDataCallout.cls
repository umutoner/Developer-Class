public with sharing class FetchDataCallout {
    public static void fetchData() {
        //1.Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://fakerestapi.azurewebsites.net/api/v1/Activities');
        request.setMethod('GET');

        //2.Prepare http
        Http http = new http();

        //3.send request, which returns response
        HttpResponse response = http.send(request);

        //4.Process the response
        if (response.getStatusCode() ==200) {
            string activitiesJSON = response.getBody();
            system.debug(activitiesJSON);

            Object ob = JSON.deserializeUntyped(activitiesJSON);
            system.debug('Results = '+ ob);
          
            } else{
            system.debug('something went wrong');
        }
    }
}

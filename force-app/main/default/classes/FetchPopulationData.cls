public with sharing class FetchPopulationData {
    public static HttpResponse fetchData() {
        //1.Prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://datausa.io/api/data?drilldowns=Nation&measures=Population');
        request.setMethod('GET');

        //2.Prepare http
        Http http = new http();

        //3.send request, which returns response
        HttpResponse response = http.send(request);

        //4.Process the response
        if (response.getStatusCode() ==200) {
            string populationJSON = response.getBody();
            system.debug(populationJSON);

            Map<String,Object> results = (Map<String,Object>)JSON.deserializeUntyped(populationJSON);
            List<Object> populations = (List<Object>) results.get('data');
            system.debug('====Object Population List Start=====');  
            for (Object Population : populations) {
                system.debug(population);
            }
            system.debug('======Object Population End======');
        } else{
            system.debug('something went wrong people');
        }
        return response;
    }
}

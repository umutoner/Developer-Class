public with sharing class DummyPostCallout {

    private static string GET_DUMMYPOST = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string POST_DUMMYPOST = CalloutInfo__mdt.getInstance('POST_DUMMYPOST').Endpoint__c;

    public static void postCallout() {
        //1. create request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(GET_DUMMYPOST);
        request.setMethod('GET');

        //2. prepare http
        http http = new http();

        //3.send request, which returns response
        HttpResponse response = http.send(request);

        system.debug(response);

        if (response.getStatusCode() == 200) {
            system.debug(response.getBody());
            DummyPostResponseWrapper dummywrapper = (DummyPostResponseWrapper)JSON.deserialize(response.getBody(), DummyPostResponseWrapper.class);
            system.debug('dummy wrapper =' +dummywrapper);
            List<Post__c> listPosts = new List<Post__c>();
            List<DummyPostResponseWrapper.Post> ListClsPost = dummywrapper.posts;

            for (DummyPostResponseWrapper.Post dpost: ListClsPost) {
                post__c p = new post__c();
                p.id__c = dpost.id;
                p.title__c = dpost.title;
                p.body__c = dpost.body;
                p.userId__c = dpost.userId;
                p.tags__c = dpost.tags.toString();
                listPosts.add(p);

            }
            Database.insert(listPosts, false);
        }else {
            system.debug(response.getStatus());
        }

    }
}

@istest
public with sharing class AnimalsCalloutsTest {
    @istest
    private static void testFetchAnimalsSuccess() {
        AnimalHttpCalloutMock am = new AnimalHttpCalloutMock();
        Test.setMock(HttpCalloutMock.class, am );

        Test.startTest();
        AnimalsCallouts.fetchAnimals();
        HttpResponse response = AnimalsCallouts.fetchAnimals2();
        Test.stopTest();

        system.assertEquals(200, response.getStatusCode());
    }

    @isTest
    private static void testFetchAnimalsFailure(){
        AnimalsHttpMockCalloutFailure am = new AnimalsHttpMockCalloutFailure();
        Test.setMock(HttpCalloutMock.class, am );

        Test.startTest();
        HttpResponse response = AnimalsCallouts.fetchAnimals2();
        Test.stopTest();

        system.assertEquals(404, response.getStatusCode());
    }

}
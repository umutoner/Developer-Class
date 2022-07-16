@isTest
public with sharing class PopulationCalloutTest {
    @isTest
    private static void testPopulationDataSuccess() {
        Test.setMock(HttpCalloutMock.class, new PopulationHttpCalloutMock());

        Test.startTest();
        HttpResponse response = FetchPopulationData.fetchData();
        Test.stopTest();

        system.assertEquals(200, response.getStatusCode(), 'The status code is 200');
    }
}

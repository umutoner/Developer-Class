@isTest
global with sharing class QuoteCalloutTest {
    @istest
    private static void testFetchQuotesSuccess() {
        QuoteCalloutMock qc = new QuoteCalloutMock();
        Test.setMock(HttpCalloutMock.class, qc);

        Test.startTest();
        QuoteCalloutClass.fetchQuote();
        HttpResponse response = QuoteCalloutClass.fetchQuote();
        Test.stopTest();

        system.assertEquals(200, response.getStatusCode());
    }

    @isTest
    private static void testFetchAnimalsFailure(){
        QuoteCalloutMockFailure qc = new QuoteCalloutMockFailure();
        Test.setMock(HttpCalloutMock.class, qc );

        Test.startTest();
        HttpResponse response = QuoteCalloutClass.fetchQuote();
        Test.stopTest();

        system.assertEquals(404, response.getStatusCode());
    }

}
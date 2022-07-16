public with sharing class ContactCalloutInvocable {
    @invocableMethod (label ='Contact Callout' description = 'Send Contact Information to REST' category = 'Contact')
   public static void contactSender (List<id> contactIds) {
    contactCallout.sendDataGo(contactIds);
   }
 
}


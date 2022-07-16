public with sharing class CaseInvocable {
    
    @invocableMethod (label ='Send Email & Save Activity' 
    description = 'Sends an email and saves the same as an activity'
    category = 'Case')
    public static void sendEmail(List<FlowInput> inputs){

        flowInput input = inputs[0];
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        msg.setTargetObjectId(input.contactId);
        msg.setSaveAsActivity(true);
        msg.setSubject('Case Created:' + input.caseNumber);
        msg.setPlainTextBody('Hello there, \n A case has been created for you to answer your query.' 
            + ' One of our customer representative is going to reach out to you. Stay tuned!'
            +'\n Thank you!');
        msgs.add(msg);    
        Messaging.SendEmailResult[] results = Messaging.sendEmail(msgs);
        for (Messaging.SendEmailResult result : results){
            if(result.isSuccess()){
                system.debug('Successfully Sent');
            }else{
                system.debug(result.getErrors());
            }
        }      
    }
            

    public class FlowInput{
        
        @invocableVariable(label = 'Case Number' description = 'To get Case Number' required = true)
        public string caseNumber;
        
        @invocableVariable(label = 'Contact Id' description = 'To get Contact Id' required = true)
        public Id contactId;
    }
}

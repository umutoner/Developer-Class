trigger AccTriggerNew on Account (before insert, before Update, after insert, after update) {

    if(Trigger.isAfter){
        if(Trigger.isUpdate || Trigger.isInsert){
            AccountTriggerHandler.getKanyeQuote(Trigger.New, Trigger.oldMap);
        }
    }
}
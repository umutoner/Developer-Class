trigger AccTrigger on Account (before insert, before Update, after insert, after update) {
    //AccountTriggerHandler.checkAccountName(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
if (trigger.isInsert && trigger.isAfter) {
    AccountTriggerHandler.createOppWithNewAcc(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}

}
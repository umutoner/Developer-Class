trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
//Whenever a new Lead record is created then show "[LeadName] is created successfully"
// if (trigger.isInsert && trigger.isBefore) {
    
//     for (Lead eachLead : trigger.new) {
//         system.debug(eachLead.LastName + ' is created successfully');
//     }
// }
//Whenever Lead is created with LeadSource as Web then show "Rating should be Cold" message 
//otherwise show "Rating should be hot".
if (trigger.isInsert && trigger.isBefore) {
    for (Lead eachLead : trigger.new) {
        if(eachLead.LeadSource =='Web'){
            system.debug('Rating should be Cold');
        }else{
            system.debug('Rating should be Hot');
        }
    }
}

}
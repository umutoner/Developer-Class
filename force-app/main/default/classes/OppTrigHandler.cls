public with sharing class OppTrigHandler {
    // public static void oppCloseDateValidation(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, Map<id, Opportunity> oppTriggerNewMap,
    // Map<id, Opportunity> oppTriggerOldMap) {
    //     for (Opportunity opp : oppTriggerNew) {
    //         if (oppTriggerOldMap.get(opp.id).CloseDate> opp.CloseDate) {
    //             opp.CloseDate.addError('Close Date can not be update to less that what already provided');
    //         }
    //     }
   
    //     }


        public static void CreateOp(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, Map<id, Opportunity> oppTriggerNewMap,
        Map<id, Opportunity> oppTriggerOldMap){
            for (Opportunity opp : oppTriggerNew) {
                system.debug('Oppoertunity Name =>'+opp.Name+  ' Closed Date => '+ opp.CloseDate+ ' Amount => '+ opp.Amount);
         }
         system.debug('total record created =>' + oppTriggerNew.size());
    }
    public static void UpdateOpp(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, Map<id, Opportunity> oppTriggerNewMap,
        Map<id, Opportunity> oppTriggerOldMap){
            for (Opportunity opp : oppTriggerNew) {
                system.debug('Old amount ==>'+ oppTriggerOldMap.get(opp.id).amount + ' New amount==>'+ opp.Amount);
                system.debug('Old close date ==>'+ oppTriggerOldMap.get(opp.id).CloseDate + ' New close date==>'+ opp.CloseDate);
                
        }
        }
        public static void StageNameUpdate(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, Map<id, Opportunity> oppTriggerNewMap,
        Map<id, Opportunity> oppTriggerOldMap){
            for (Opportunity opp : oppTriggerNew) {
                if (oppTriggerOldMap.get(opp.id).StageName != opp.StageName) {
                    system.debug('Description = '+ opp.Description+ ' , Opportunity Name = '+ opp.Name);
                }
                
        }
        }
    }

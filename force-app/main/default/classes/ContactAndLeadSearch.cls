public with sharing class ContactAndLeadSearch {
    public static  List<List<sObject>> searchContactsAndLeads(string nm) {
        List<List< sObject>> sList = [FIND :nm IN NAME FIELDS RETURNING CONTACT(FirstName, LastName), Lead(FirstName, LastName) ];
        return sList;
    }
}

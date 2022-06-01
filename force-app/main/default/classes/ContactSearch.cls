public class ContactSearch {
    public static list<Contact> searchForContacts(string lname, string pCode) {
        List<Contact> con = [SELECT Id, name FROM CONTACT where LastName=: lname and MailingPostalCode=: pCode];
        return con;
    }
}

public class demoDmlClass {
    public demoDmlClass() {
        system.debug('Welcome to the world of SOQL! Please enter the key character to search');
    }
    public void dmlInsert(string keyChar){
        List<Account> AccContacts = [SELECT id,name, (SELECT name, FirstName, LastName from Contacts WHERE name LIKE:'%'+keyChar+'%') from Account ];
        List<Contact> CopiedContacts = New List<Contact>(); 
        system.debug('INPUT ::' + keyChar );
        
        if (!AccContacts.isEmpty()) {
            for (Account eachAcc : AccContacts) {
                for (Contact eachCon : eachAcc.Contacts) {
                    Contact copy = new Contact();
                    copy.FirstName= eachCon.FirstName;
                    copy.LastName = eachCon.LastName + ' Copied From Accounts';
                    CopiedContacts.add(copy);
                    system.debug('OUTPUT ' +copy.firstName+' '+ copy.LastName);     
                }                      
        }
         
        } else {
            system.debug('Please enter a valid search key');
        }
       insert CopiedContacts;
    }
}

public class SOQL_Class {
    public static void account_SOQL() {
        List<Account> acc = [SELECT name, phone FROM Account WHERE phone !=null];
        system.debug('Telefonu null olmayan hesaplar--> '+ acc);
        system.debug('===============================================');
        List<Account> acc2 = [SELECT id, name FROM Account WHERE name LIKE '%a' ];
        system.debug('Sonu "a" ile biten hesaplar --> ' + acc2);
        system.debug('===============================================');
    }
    public static void account_SOQL2(string parametrem){
        List<Account> acc3 = [SELECT name FROM account WHERE name like: '%'+parametrem+'%'];
        string mystring = parametrem;
        system.debug('Parametre ' + parametrem + ' gecenler---> '+ acc3);
        system.debug('===============================================');
    }
    public static void contact_SOQL(){
        List<Contact> con = [SELECT name FROM Contact WHERE phone= null AND HomePhone=null];
        system.debug('Telefon ve ev telefon alanlari bos olan hesaplar ---> ' +con);
        system.debug('===============================================');
    }
    public static void accountSOQL3(){
        List<Account> acc4 = [SELECT name, AnnualRevenue FROM Account WHERE AnnualRevenue!=null];
        Decimal sum=0;
        for (Account eachAccount: acc4) {
            Decimal sum2= eachAccount.AnnualRevenue;
            sum+=sum2;
        }
        system.debug('Annual revenueleri bos olmayan hesaplarin toplami ---> ' +sum);
        system.debug('===============================================');
    }
}

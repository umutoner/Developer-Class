account a = new account();
a.name = 'Mona';
a.phone = '12312311';
a.AnnualRevenue = 990099009;

account b = new account();
b.name = 'Lisa';
b.phone = '987123872';
b.AnnualRevenue = 1009922;

List<Account> ab = new List<Account>{a,b};
string accountJSON1 = JSON.serialize(ab);
system.debug(accountJSON1);

List<Account> ac = [SELECT id, name, phone, annualRevenue FROM Account LIMIT 5];
string accountJSON2 = JSON.serialize(ac);
system.debug(accountJSON2);

string jsonStringAcc = '{"Name":"JsontoApex", "Type": "Prospect", "AnuualRevenue":50 }';
Account acc = (Account)JSON.deserialize(jsonStringAcc, account.class);
System.debug(acc);
insert acc;

//Object ob=JSON.deserialsize(jsonStringAcc, Account.class);
//Account acc = (Account)ob;
//insert acc;

string jsonStringAcc2 = '[{"Name":"JsontoApex2", "Type": "Prospect", "AnuualRevenue":5000 }, {"Name":"JsontoApex3", "Type": "Prospect", "AnuualRevenue":50000 },{"Name":"JsontoApex4", "Type": "Prospect", "AnuualRevenue":999950 }]';
Object ob = JSON.deserialize(jsonStringAcc2, List<Account>.class);
List<Account> listacc = (List<Account>)ob;
insert listacc;

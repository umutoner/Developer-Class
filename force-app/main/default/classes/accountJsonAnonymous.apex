List<Account> accList = [Select id, name, AnnualRevenue, Type from Account LIMIT 5];
system.debug(accList);
string accListJson = Json.serialize(accList);
system.debug(accListJson);

/*Print the JSON format of account and its related contacts for 'United Oil & Gas Corp.' account 
from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account Object 
And Fetch Id, First Name and Last Name from the related contacts. */

List<Account>accList2 = [SELECT id, name, annualRevenue, (SELECT id, firstName, lastName from CONTACTS) type from Account WHERE name ='United Oil & Gas Corp.'];
system.debug(accList2);
string accList2Json = JSON.serialize(accList2);
system.debug(accList2Json);

/*Print the JSON format of account and its related opportunities for 'United Oil & Gas Corp.' 
account from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account 
Object And Fetch Id, StageName and Amount from the related Opportunities.*/

List<Account>accList3 = [SELECT id, name, annualRevenue, type, (SELECT id, StageName, amount FROM Opportunities) from Account WHERE name ='United Oil & Gas Corp.'];
system.debug(accList3);
string accList3Json = JSON.serialize(accList3);
system.debug(accList3Json);






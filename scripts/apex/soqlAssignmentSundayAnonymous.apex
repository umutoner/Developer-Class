// SELECT AccountId, FirstName, LastName, Email From Contact
// Select name, phone from account where phone=null order by name asc
// select name from contact where account.id=null
// select count() from opportunity
/*1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ 
for any 5 currency ISO codes. Like below:  
a. AUD => 0.73  
b. CAD => 0.78  
c. EUR => 1.13  
d. NZD => 0.68  
e. INR => 0.013  
2. Fetch the currency conversion rate for any one currency ISO code and print it.  
3. Check if the above Map have conversion rate for SAD ISO code.  
4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the 
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: 
EUR – In one variable AUD, CAD, NZD, and INR – In another variable. */

Map<String,Decimal> currISOCodeAndExchangeRateMap = new Map<String,Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
system.debug(currISOCodeAndExchangeRateMap);
system.debug(currISOCodeAndExchangeRateMap.get('EUR'));

boolean checkifSad = currISOCodeAndExchangeRateMap.containsKey('SAD');
system.debug('Is SAD ISO included = ' + checkifSad);

Set<String> GreaterThan1 = new Set<String>();
Set<String> LessThan1 = new Set<String>();

for (String eachKey : currISOCodeAndExchangeRateMap.keySet()) {
    if(currISOCodeAndExchangeRateMap.get(eachKey)>=1) {
        GreaterThan1.add(eachKey);
    }else{
        LessThan1.add(eachKey);
    }
}
system.debug(GreaterThan1);
system.debug(LessThan1);
//Fetch all the opportunities which have stage as Closed Won and Amount more than or equal to 
//35000.
//SELECT id, Name FROM opportunity Where StageName = 'Closed Won' and Amount >= 35000
//Fetch all the contacts and their related Account Name, order them by the contact’s last name in 
//descending order. 
//SELECT id, Name, LastName, account.name FROM Contact ORDER BY LastName Desc
//Fetch all the Accounts along with their related Opportunities with StageName other than Closed 
//Lost.
//SELECT id, name, (Select name, stageName from Opportunities where stageName !='Closed Lost') From Account
//Find the Top 10 opportunities based on Amount value.
//Select name, amount from opportunity order by amount desc limit 10
//Select name, amount from opportunity order by amount desc Nulls Last limit 10
//Find lower 20 opportunities based on Amount value which are not set to Closed Won and not to 
//Closed Lost stage.
//Select name, amount from opportunity where stageName!='Closed Lost' and stageName!='Closed Won' Order by amount Nulls First limit 20 

map<String, Country_Code__c> mapcc = Country_Code__c.getAll();
system.debug('Map of country code = '+ mapcc);
for (string eachS : mapcc.keyset()) {
    system.debug('Country =' + eachS + ', code =' + mapcc.get(eachS).Country_Code__c);    
}
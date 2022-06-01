map<String, email_domain__mdt> alldomains = email_domain__mdt.getall();
system.debug(alldomains);

for (string ead : alldomains.keyset()) {
    system.debug('domains => '+ alldomains.get(ead));
}
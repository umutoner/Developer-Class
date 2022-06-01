AccountsSchedulable aSche = new AccountsSchedulable();
string cron = '0 0 13 * * ?';
system.schedule('Schedule a job via cron', cron, aSche);
List<Account> accList = [Select Id, name from Account];
AccountQueueableExample aqe = new AccountQueueableExample(accList);
ID JobId = System.enqueueJob(aqe);
system.debug('JobId = '+ JobId);
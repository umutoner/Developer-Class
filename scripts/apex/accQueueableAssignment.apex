List<Account> accList = [select name, id from account];
AccountsQueueableAssignment acq = new AccountsQueueableAssignment(accList);
system.enqueueJob(acq);
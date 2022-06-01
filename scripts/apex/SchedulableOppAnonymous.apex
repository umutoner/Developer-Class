SchedulableOpportunityUpdate obs = new SchedulableOpportunityUpdate();
string cron = '0 0 15 1/1 * ? *'; 
System.schedule('Update Opportunity', cron, obs);

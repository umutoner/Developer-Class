public class assignmentClassApr9 {
   // public void checkIfContains() {
        // string quote = 'Welcome to the Salesforce world, apex is host in this world.';
        // Boolean checkIt = quote.contains('HOST');
        // system.debug('Contains HOST? ' + checkIt);

        // string favorite = 'My favourite part is apex';
        // string checkIt2 = 'MY FAVOURITE PART IS APEX';
        // Boolean isEqual = favorite.equals(checkIt2);
        // system.debug('Are they equal? ' + isEqual);

        // date dateOfJoin = date.newInstance(2018, 03, 01);
        // date todayDate = date.today();
        // integer experience = dateOfJoin.monthsBetween(todayDate);
        // system.debug('Total experience in months: '+ experience);
   // }

    //public void myCalculator(){
        // date dob = date.newInstance(1982,01,01);
        // date todaysDate = date.today();
        // integer ageDays = dob.daysBetween(todaysDate);
        // integer ageMonth = dob.monthsBetween(todaysDate);
        // integer ageYear = ageMonth / 12;

        // system.debug('I am '+ ageDays + ' days, ' + ageMonth + ' months and ' +
        //  ageYear + ' years old.' );
        
    //}
    public void planRemaining (){
        date todayDate = date.today();
        date planExpiry = date.newInstance(2023,10,11);
        integer remainingDays = todayDate.daysBetween(planExpiry);

        system.debug(remainingDays + 'days remained for plan expiry.');
    }

}

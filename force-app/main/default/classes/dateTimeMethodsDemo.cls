public class dateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(2016,08,19);
        date today = date.today();
        integer ageInMonths = birthDate.monthsBetween(today);
        system.debug('it has been ' + ageInMonths + ' months');

        integer ageInDays = birthDate.daysBetween(today);
        system.debug('It has been ' + ageInDays + ' days.');
    }
    public void subscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate =  subscriptionStartDate.addDays(1000);
        system.debug('subscription end date: ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('Subscription end year: ' + endDateYear);

        integer endDateMonths = subscriptionEndDate.month();
        system.debug('Subscription end month: ' + endDateMonths);

    } 

        public void printOfferEndDateTime(){
            Datetime offerStarts = dateTime.now();
            Datetime offerEnds = offerStarts.addHours(51);
            system.debug('Offer ends: ' + offerEnds);
        }

}
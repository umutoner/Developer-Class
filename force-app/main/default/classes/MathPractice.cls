public class MathPractice {
    public static void ageCalculate(Map<String,Date> agesN) {
        List<Decimal> ageList = new List<Decimal>();
        Date today = date.today();
        Decimal Age=0; 
        for (Date eachVal : agesN.values()) {
            Age= (eachVal.daysBetween(Today));
            decimal netAge= age/365;
            ageList.add(netAge);
        }
        decimal sum= 0;
        for (Decimal eachAge : ageList) {
            sum+=eachAge;
        }
        decimal avgAge = sum/ageList.size();
        system.debug('Girilen kisilierin yas ortalamasi =>' + avgAge.setScale(1));
}
}
public class stringDemoClass {
    public void stringVoid1() {
        string sessionDescription = 'learning string\'s methods in APEX language';
        //l.length

        integer lengthOfStr = sessionDescription.length();
        System.debug('length of string is ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        String v1 = sessionDescriptionInCaps;
        System.debug('in caps =' + v1);

        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('Contains apex? ' + containsApex);
        Boolean containApex = sessionDescription.contains('APEX');
        system.debug('Contains apex? ' + containApex);

        Boolean cntainApex = sessionDescription.containsIgnoreCase('apex');
        system.debug('Contains apex? ' + cntainApex);

        string language = 'apex';
        string language2 = 'apex';
        Boolean isEqual = language.equals(language2);
        system.debug('are they equal? ' + isEqual);

    }
}

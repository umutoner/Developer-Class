public with sharing class StringArrayTest {
    public static list<String> generateStringArray(integer inc) {
        string[] newStList = new List<String>();
            for (Integer i = 0; i < inc; i++) {
                newStList.add('Test '+ i);
            }    
            system.debug(newStList);    
        return newStList;
    }
}

public class StringArray {

    public static List<String> generateStringArray(integer lng) {
        List<String> stringList = new List<String>();
        
        for (Integer i = 0; i <= lng; i++){
            string nlist = 'Test'+' '+i;
            stringList.add(nlist);

                }
        system.debug(stringList);
        return stringList;
    }
}

public class Calculator {
    public static void welcomeMessage () {
        system.System.debug('welcome to Apex calc.');
    }

    public static void printNewMessage(string msg){
        system.debug(msg);

    }

    public static integer add(integer a, integer b){
        integer sum = a+b;
        return sum;
    }

  
    
    //add method with 3 params
    public static integer add2(integer a, integer b, integer c){
        return a+b+c;
    }

    public static void intlist(List<Integer> asd){
           integer sum = 0;
           for (integer eachint : asd) {
               sum+=eachint;
           }
           system.debug(sum); 
    }
}


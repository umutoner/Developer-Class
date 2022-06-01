@isTest

public class CalculatorTest {
    @isTest 
    public static void testMessage() {
        Calculator.welcomeMessage();
        Calculator.printNewMessage('Hello Test');
    }
    @isTest
    public static void addTest(){
        integer i = 10;
        integer j = 15;
        Calculator.add(i, j);
    }
    @isTest
    public static void addTest2(){
        integer i= 10;
        integer j = 5;
        integer k = 1;
        integer addCalc = Calculator.add2(i, j, k);
        system.assertEquals(16, addCalc);
    }
    @isTest
    public static void testint(){
        List<integer> asx = new List<Integer>{20,20,20};
        Calculator.intlist(asx);
        

    }
}

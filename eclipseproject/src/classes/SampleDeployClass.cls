@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        //This is a test comment for the ant parameterized build

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World');
    }
}
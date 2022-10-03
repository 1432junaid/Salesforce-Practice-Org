@isTest
public class TestVerifyDate {
	@isTest
    public static void  testCheckDates(){
        Date dt1 = Date.today();
        Date dt2 = dt1.addDays(2);
        Date rtrn = VerifyDate.CheckDates(dt1,dt2);
        System.assertEquals(rtrn , dt2 );
    }
 	
    @isTest
     public static void  testCheckDates1(){
        Date dt1 = Date.today();
        Date dt2 = dt1.addDays(40);
        Date date1 = Date.today();
        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
        Date rtrn = VerifyDate.CheckDates(dt1,dt2);
        System.assertEquals(rtrn , lastDay );
    }
}
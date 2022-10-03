public class MyUtility {
    public static Integer checkAge(String dob){
        Integer age;
        Date dt = Date.parse(dob);
        Integer days = dt.daysBetween(Date.today());
        age = Integer.valueOf(days/365);
        return age;
    }
}
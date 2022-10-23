public  class TestClass {
    public static void checkMethod(){
        System.debug('this is check Method ::');
    }
    
    public static date stringToDate(String dateString){
        if(dateString.length() == 8 && dateString.isAlphanumeric()) {
            Integer year = Integer.valueOf(dateString.substring(0, 4) );
            Integer month = Integer.valueOf(dateString.substring(4, 6) );		
            Integer day = Integer.valueOf(dateString.substring(6, 8) );
            System.debug('year >>>'+year+' month >> '+month+'  day>>>  '+day);
            Date returnDate = date.newinstance(year, month, day);
            return returnDate;
        }
        return null;
    }
    
    public static String createAccount() {
        String returnAccountId ;
        Account objAccount = new Account();
        objAccount.Name =  'Apex class  : createAccount ';
        Database.SaveResult insertResult =  Database.insert(objAccount, false);
        System.debug('insertResult :'+insertResult);
        insertResult.getId();
        return returnAccountId;
    }
    
}
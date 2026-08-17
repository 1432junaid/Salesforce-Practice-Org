public class WireClass {
	@AuraEnabled(cacheable=true)
    public static List<Account> getAccount(){
        return [SELECT id, Name FROM Account];
    }
    
}
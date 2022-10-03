@IsTest
public class AccountProcessorTest {
	@IsTest
    public static void method1(){
        List<Account> dummyAccount = new List<Account>();
        Map<Integer,id> AccountId = new Map<Integer,id>();
        for(Integer i = 1; i <= 50; i ++){
            Account acc = new Account();
            acc.Name = 'Dummyname '+i;    
            dummyAccount.add(acc);
        }
        insert dummyAccount;
        Integer idacc = 1;
        for(Account acc : dummyAccount){
            AccountId.put(idacc, acc.Id);
            idacc++;
        }
        
        List<Contact> conlist = new List<Contact>();
        for(Integer j = 1; j <= dummyAccount.size(); j++){
            for(Integer i = 1 ; i <= 5 ; i++ ){
                Contact con = new Contact();
                con.LastName = 'DummyName '+i;
                con.AccountId = AccountId.get(j);
                conlist.add(con);
            }  
        }
        insert conlist;
        Test.startTest();
        AccountProcessor.countContacts(AccountId.values());
		Test.stopTest();
    }
}
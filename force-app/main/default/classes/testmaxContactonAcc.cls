@istest
public class testmaxContactonAcc {
    @istest
    public static void testmaxcont(){
        Account acc = new Account();
        acc.Name = 'jdTest';
        List<Contact> contList = new List<Contact>(); 
        for(Integer i = 0; i < 4; i++){
            Contact con = new Contact();
            con.LastName  = 'conTest '+i;
            con.AccountId = acc.id;
            contList.add(con);
        }
        insert acc;
        
        try{
            insert contList;
        }catch(Exception e){
            e.getMessage();
            //            System.assertEquals('You cannot have more than 3 Contacts per Account',e.getMessage());
			//            System.assert(e.getMessage().contains('You cannot have more than 3 Contacts per Account'));
            Boolean expectedExceptionThrown =  e.getMessage().contains('You cannot have more than 3 Contacts per Account') ? true : false;
			System.AssertEquals(expectedExceptionThrown, true);
            
        }
    }
}
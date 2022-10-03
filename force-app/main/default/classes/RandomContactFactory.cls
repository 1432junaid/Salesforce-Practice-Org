public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numberOfContact, String contactLastName){
        List<Contact> contactList = new List<Contact>();
        for(Integer  i = 1 ; i <= numberOfContact; i++) {
            Contact con = new Contact(FirstName = 'jd'+i, Lastname = contactLastName);
            contactList.add(con);
        }
            
		return contactList;
    }
}
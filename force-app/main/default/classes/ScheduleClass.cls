global class ScheduleClass implements Schedulable {
    global void execute(SchedulableContext ctx){
     	List<Contact> insertContact = new List<Contact>();
        for(Account acc : [SELECT id,Name FROM Account WHERE Industry = 'Agriculture']){
            Contact con1 = new Contact();
            con1.LastName = acc.Name+' cont1';
            con1.AccountId = acc.id;
            
            Contact con2 = new Contact();
            con2.LastName = acc.Name+' cont2';
            con2.AccountId = acc.Id;
            
            insertContact.add(con1);
            insertContact.add(con2);
        }
        insert insertContact;
    }
    
}
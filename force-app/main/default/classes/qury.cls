public class qury {
	
     public static List<Account> FindtheCount(String namestr, string Industryname){
      //List<Account> accli=[SELECT id,name from Account where Name='tmc'];

		string query= 'SELECT id,name from Account where';

         if(Industryname!=null && namestr!=null)
            query += ' LIMIT 20';
//            	query += ' And Industry=:Industryname';
         else if(Industryname != null && namestr == null){
             query += ' WHERE Industry=:Industryname';
         }
         else if(namestr != null && Industryname == null){
             query += ' WHERE Name=:namestr';
         }else {
             query += ' WHERE Name=:namestr AND Industry=:Industryname';
         }
          
        return database.query(query);
    }
}
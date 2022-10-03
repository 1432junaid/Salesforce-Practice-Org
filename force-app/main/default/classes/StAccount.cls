public  with sharing class StAccount {    
	public list<account> data;
    public list<account> acctlist;
    public list<acnt> checkData;
    
	public class acnt{
		public Account acc {get; set;}
		public Boolean checked{get; set;}
      	public acnt(Account m,Boolean s){
	        acc = m;
	        checked = s;
      	}
   	}
	public list<acnt>  getCheckData(){
		list<acnt> ant= new list<acnt>();
		for(Account acc1:[select Id,name, industry,type,
					AnnualRevenue,AccountNumber   from account]){
			ant.add(new acnt(acc1,false));        
        }
		checkData=ant;
		return ant;
    }
    
    public PageReference  deleteAccount(){
		data = new List<Account>();
		for(acnt acctt:checkData){
			if(acctt.checked == true){
				if(data==null){
					data = new List<Account>();
				}
				data.add(acctt.acc);     
			}             
	}
        //System.debug(data);
	Delete data;
        
	return new PageReference ('/apex/AccountDetails');
	}
}
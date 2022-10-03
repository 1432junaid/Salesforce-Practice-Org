public class IncomeTriggerHandler {
    public static void countTotalIncome(Map<id,Income__c> newMap) {
        
        Set<Id> SalaryIds =  new Set<id>();					//salary -> contact
        Map<Id,Integer> salary_totalIncome = new Map<Id, Integer>();
        
        Set<Id> AccountIds = new Set<id>();
        Map<Id,Integer> Account_totalSalaries = new Map<Id, Integer>(); 
        for(Income__c incm : newMap.values()) {				//collect SalaryIds
            if(incm.Salary__c != null) {
                SalaryIds.add(incm.Salary__c);
            }
        }
        
        for(Salary__c sal : [SELECT Id,Account__c FROM Salary__c ]){
//            AccountIds.add(sal.Account__c);					//collect AccountIds
            if(sal.Account__c != null) {
                AccountIds.add(sal.Account__c);
            }
        }
        
        
        
        for(Salary__c sal : [SELECT Id,(SELECT id FROM Incomes__r) From Salary__c WHERE Id IN: SalaryIds] ) {
            System.debug('sal-> incomes :: '+sal.Incomes__r.size());
            if( !salary_totalIncome.containsKey(sal.Id)) {
                salary_totalIncome.put(sal.Id, sal.Incomes__r.size());                
            }
            				
        }
        
        for(Account acc : [Select Id,(SELECT Id FROM Salaries__r) FROM Account WHERE Id IN: AccountIds] ) {
            if( !Account_totalSalaries.containsKey(acc.Id)) {
                Account_totalSalaries.put(acc.Id, acc.Salaries__r.size());
            }
        }
        
        System.debug('Account_totalSalaries ::: '+Account_totalSalaries);
        System.debug('Salary_totalIncome :::  '+salary_totalIncome);
        
        Map<id,Integer> accountId_totalNumberOfIncomes = new Map<Id,integer>();
  
        for(Salary__c sal : [SELECT id, Account__c FROM Salary__c]) {
            if(sal.Account__c != null) {
                if(salary_totalIncome.containsKey(sal.Id)){
                    if(accountId_totalNumberOfIncomes.get(sal.Account__c) == null){
                        accountId_totalNumberOfIncomes.put(sal.Account__c, 0);
                    }
                    accountId_totalNumberOfIncomes.put(sal.Account__c, +salary_totalIncome.get(sal.Id));
                }
            }
        }
        
        System.debug('accountId_totalNumberOfIncomes>>>>>>>> >>>::: '+accountId_totalNumberOfIncomes.values());
		System.debug('accountId_totalNumberOfIncomes>>>>>>>> >>>::: '+accountId_totalNumberOfIncomes);
///        System.debug('-------->'+Account_totalSalaries.get('0015g00000ZcVDtAAN').Name);
    }
}
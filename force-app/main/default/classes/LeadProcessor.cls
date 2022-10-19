public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, LeadSource FROM Lead');
    }
    
    public void execute(Database.BatchableContext bc, List<sObject> scope){
        List<Lead> listOfLead = new List<Lead>();
        for(Lead objLead : (List<Lead>)scope){
            objLead.LeadSource = 'Dreamforce';
        }
        update listOfLead;
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('FINISH');
    }
}
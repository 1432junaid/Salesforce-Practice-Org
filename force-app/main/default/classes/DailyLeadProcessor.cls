public with sharing class DailyLeadProcessor implements Schedulable{
   
    public void execute(SchedulableContext cntx){
        List<SObject> updateLeadList = new List<SObject>();
        for(Lead crntLead : [SELECT id, LeadSource FROM Lead WHERE LeadSource = null ORDER BY CreatedDate LIMIT 200]){
            Lead objLead = crntLead.clone();
            objLead.Id = crntLead.Id;
            objLead.LeadSource = 'Dreamforce';
            updateLeadList.add(objLead);
        }
        Database.update(updateLeadList);
    }
}

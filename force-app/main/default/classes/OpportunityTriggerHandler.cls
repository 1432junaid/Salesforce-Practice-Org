public class OpportunityTriggerHandler extends TriggerHandler{


    
    private Map<Id, Opportunity> newOppMap;			
    private Map<Id, Opportunity> oldOppMap;
    private List<Opportunity> newList;
    private List<Opportunity> oldList;
    
    public OpportunityTriggerHandler() {
        this.setMaxloopCount(1);
        this.newOppMap = (Map<Id, Opportunity>) Trigger.newMap;		//need to type cast While using TriggerHandler Class
		this.oldOppMap = (Map<Id, Opportunity>) Trigger.OldMap;
        this.newList   = (List<Opportunity>) Trigger.new;
        this.oldList   = (List<Opportunity>) trigger.old;
    }
    public override void beforeInsert(){
		System.debug('BeforeInsert in Opportunity handler #####');
        for(Opportunity op : newList){
            if(op.StageName == 'prospecting'){
                op.StageName.addError('please select another option');
            }
        }
    }
    
    public override void beforeUpdate(){
        System.debug('BeforeUpdate Opportinuty handler ####');
        for(Opportunity op : newList) {
            if(op.StageName == 'Qualification') {
                op.StageName.addError('Please select another option #src: beforeUpdateTrigger');
            }
        }
    }
    
/*    
    public override void beforeUpdate() {        
        List<Opportunity> updateList = new List<Opportunity>();
        
        for(Opportunity op : newOppMap.values()) {
            if(op.StageName != oldOppMap.get(op.Id).StageName && op.StageName == 'Prospecting') {
 				op.StageName = 'Qualification';
            }
        } 
    }
    
    public override void beforeInsert() {
        
    }
*/

}
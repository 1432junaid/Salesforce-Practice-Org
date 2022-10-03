trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

/*
    List<Task> tsk = new List<Task>();
    for(Opportunity opp : Trigger.new){
        if(opp.StageName == 'ClosedWon'){
            Task tempTsk = new Task(WhatId = opp.Id, Subject = 'Follow Up Test Task');
        }
    }
//    for(Opportunity opp : [SELECT id,StageName FROM Opportunity WHERE id IN : Trigger.old AND StageName = 'ClosedWon'] ){
//        Task tempTsk = new Task(WhatId = opp.Id, Subject = 'Follow Up Test Task');
//        tsk.add(tempTsk);
//    }
    if(tsk.size() > 0) {
        insert tsk;
    }
*/
    
    
    list<task> tsk=new list<task>();
    for(Opportunity oc: Trigger.new)
    {
        if(oc.StageName == 'closed Won')
        {
            task newtask=new task(WhatId = oc.Id,subject='Follow Up Test Task');
            tsk.add(newtask);            
        }
    }
    if(tsk.size()>0)
    {
        insert tsk;
    }
}
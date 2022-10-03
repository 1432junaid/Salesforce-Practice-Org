trigger OpportunityTrigger on Opportunity (before insert, before Update, after insert, after Update, before delete, after delete, after undelete) {
    
/* Trigger By Junaid (Jd) 
* Trigger fashon : Kevin Ohara 
*
*/     
    new OpportunityTriggerHandler().run();
    
}
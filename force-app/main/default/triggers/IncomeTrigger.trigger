trigger IncomeTrigger on Income__c (before insert, after Insert, before update, after update, before delete, after delete, after undelete) {
    If(Trigger.isAfter) {
        if(Trigger.isInsert || Trigger.isUpdate) {
            System.debug('>>>>>>Income__c Trigger called>>>>>>');
            System.debug('Income Trigger context After insert and After update');
            IncomeTriggerHandler.countTotalIncome(Trigger.newMap);
        }
    }
}
trigger MyPlatformEventTrigger on MyPlatformEvent__e (after insert) {
    for(MyPlatformEvent__e objEvent : Trigger.New ) {
        Account acc = new Account();
        acc.Name = 'this is created in platform Event Trigger';
        acc.Description = objEvent.notification__c;
        System.debug('@acc : '+acc);
//        Insert acc;
    }
}
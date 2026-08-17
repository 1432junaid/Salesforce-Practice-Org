trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
 
//--------------------//------------------//Before Context--//--------------------//--------------------//--------------------
        
    if(Trigger.isBefore){
        if(Trigger.isInsert){							// before insert

        }

        if(Trigger.isUpdate){							//before update
            System.debug('Trigger -> before update');
            //new AccountTriggerHelper().run();
        }
        
        if(Trigger.isDelete){
            System.debug('>>> Trigger new isBefore Delete >> '+Trigger.new);
            System.debug('>>> Trigger old isBefore Delete >> '+Trigger.old);
            AccountTriggerHandler.restrictAccountDelete(Trigger.old);
        }
    }
//--------------------//------------------//After Context--//--------------------//--------------------//--------------------
       

    if(Trigger.isAfter){
        if(Trigger.isInsert){					//after Insert
            
        }
        if(Trigger.isUpdate) {					//after Insert
            
        }
        
        if(Trigger.isDelete){
            System.debug('>>> Trigger new isAfter Delete >> '+Trigger.new);
            System.debug('>>> Trigger old isAfter Delete >> '+Trigger.old);
        }
    }
}
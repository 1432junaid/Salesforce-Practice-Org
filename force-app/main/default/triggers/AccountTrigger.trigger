trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
 
//--------------------//------------------//Before Context--//--------------------//--------------------//--------------------
        
    if(Trigger.isBefore){
        if(Trigger.isInsert){							// before insert

        }

        if(Trigger.isUpdate){							//before update
            System.debug('Trigger -> before update');
            //new AccountTriggerHelper().run();
        }
    }
//--------------------//------------------//After Context--//--------------------//--------------------//--------------------
       

    if(Trigger.isAfter){
        if(Trigger.isInsert){					//after Insert
            
        }
        if(Trigger.isUpdate) {					//after Insert
            
        }
    }
}
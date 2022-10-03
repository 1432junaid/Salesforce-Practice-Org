public class countLeaveHandler {
    public static void count(List<Leave__c> newlist){
        date st_date;
        date lst_date;
        
        set<date> totalHolidays = new set<date>();			// use to store all dates
        for(Holiday__c hd : [SELECT Holiday_Date__c FROM Holiday__c]){
            DateTime dt = hd.Holiday_Date__c; 
            if(dt.format('EEE') != 'Sat' && dt.format('EEE') != 'Sun'){		//check is holiday on sat or sunday
                totalHolidays.add(hd.Holiday_Date__c);	               
            }
        }
        
        
        System.debug(totalHolidays);
        Integer count = 0;
        Integer totalgap = 0;
        for(Leave__c ls : newList){
            st_date = ls.Start_date__c;
            lst_date = ls.End_date__c;
            //       totalgap = date.valueOf(st_date).daysBetween(date.valueOf(lst_date)) +1;
            for(Date i = st_date ; i<=lst_date ;  i=i.addDays(1) ){
                Datetime dt = (DateTime)i;
                String dayt = dt.format('EEE');
                System.debug('current >> : '+dayt);
                if(dayt == 'Sat' || dayt =='Sun'){
                        count = count+1;
//                        System.debug('inner for loop >> : '+count);
                }
                if(totalHolidays.contains(i)) 
                    count = count + 1;
            }   				                
            ls.Number_of_Leave__c = count;
//            System.debug('Count in for loop >> : '+count+'>>>> number of leaves >> :'+ls.Number_of_Leave__c);   
        }
    }     
    public static void countTotalNumberLeaves(List<Leave__c> newList){
        List<Holiday__c> holidayList = new List<Holiday__c>();
        List<Leave__c> leaveList = [SELECT id,Name,Start_date__c,End_date__c,
                                    (SELECT id,Name,Holiday_Date__c FROM Holidays__r) FROM Leave__c WHERE id IN :newList];
        
        system.debug(leaveList);
        for(Holiday__c hd : [SELECT id,Holiday_Date__c,Leave__c FROM Holiday__c]){
            holidayList.add(hd);
        }
        for(Leave__c ls : leaveList){
            
        }
    }
    public static void version3(List<Leave__c> newList){
         set<date> allholidays = new set<date>();
         for(Holiday__c holi : [SELECT id,Holiday_date__c  FROM Holiday__c]) {
             Datetime tempdt = (Datetime)(holi.Holiday_date__c);
             if(tempdt.format('E') == 'Sat' || tempdt.format('E') == 'Sun'){
                 allholidays.add(holi.Holiday_date__c);                 
             }
         }
         System.debug(allholidays); 	// all holidays except Which lies on sunday and saturday

         Integer totalgap = 0;
         Integer count = 0;
         for(Leave__c lv : newList) {
             for(date i = lv.Start_date__c; i <= lv.End_date__c; i=i.addDays(1) ){
                 totalgap++;
                 datetime dt = (datetime)i;
                 if(dt.format('E') == 'Sat' || dt.format('E') == 'Sun') {
                     ++count;
                 }
                 if(allholidays.contains(i)){
                     ++count;
                 }
             }
             lv.Number_of_Leave__c = totalgap-count;
         }
         System.debug('Total gap >> :: >>>>'+totalgap );
		 System.debug('count >>>> :: >>>'+count);         
     }
}
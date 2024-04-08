public without sharing class TodoController {   

    @AuraEnabled(cacheable=true) 
    public  static List<Todo_List__c> getTodoList() {    
        try {
            return [SELECT id, Task__c FROM Todo_List__c WITH SECURITY_ENFORCED];
        } catch (Exception exp) {
            System.debug('Exception line : msg'+exp.getLineNumber()+' : '+exp.getMessage());    
        }
        return null;
    }


    @AuraEnabled(cacheable = true)
    public static void insertTodolist(String text){
        system.debug('>> text : '+text);
        try {
            if(!String.isBlank(text)){
                insert new Todo_List__c(Task__c = text);
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        } 
    }
}
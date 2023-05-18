public without sharing class TodoController {    
    public  static List<Todo_List__c> getTodoList() {    
        try {
            return [SELECT id, Task__c FROM Todo_List__c WITH SECURITY_ENFORCED];
        } catch (Exception exp) {
            System.debug('Exception line : msg'+exp.getLineNumber()+' : '+exp.getMessage());    
        }
        return null;
    }
}
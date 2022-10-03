public class uplaodAttachmentController {

    public Notes_and_Attachments__c notesAndAttachment {get; set;}
    public String file_name {get; set; }
    public String file1 {get; set; }
    public uplaodAttachmentController(){
    //    notesAndAttachment = [SELECT Id, Name, File_Name__c, file__c FROM Notes_and_Attachments__c LIMIT 1];
    }
    public PageReference save() {
        Notes_and_Attachments__c  objData = new Notes_and_Attachments__c(); 
        objData.file__c  = file1;
        System.debug('file1 '+file1);
        objData.File_Name__c = file_name;
        insert objData;
        return null;
    }
}
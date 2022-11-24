public class UploadFile {

    public void uploadAttachment(){
/*        ContentVersion cv = new ContentVersion();
        cv.Title = 'Test';
        cv.PathOnClient = requestBody.attachmentName;
        cv.VersionData = EncodingUtil.base64Decode(requestBody.attachments);
        // cv.ContentLocation = 'S';
        Insert cv;
        
        Id conDocId = [SELECT ContentDocumentId FROM ContentVersion WHERE Id = :cv.Id].ContentDocumentId;
        ContentDocumentLink cdl = New ContentDocumentLink();
        cdl.LinkedEntityId = msg.Id;
        //    cdl.LinkedEntityId = cs.Id;
        cdl.ContentDocumentId = conDocId;
        cdl.shareType = 'V';
        Insert cdl;
        
        System.debug('## Entered ' + requestBody.attachments);
        Attachment myAttachment = new Attachment();
        //V1.0 Changes starts
        myAttachment.Body = EncodingUtil.base64Decode(requestBody.attachments);
        //V1.0 Changes end
        myAttachment.Name = requestBody.attachmentName != NULL ? requestBody.attachmentName : '';
        myAttachment.ParentId = caseId;
        insert myAttachment;
*/
	}
    
    public static void uploadFile(){
        String testData = 'Hi my name is Junaid and this file is to be stored as a Pdf !!';
        
        ContentVersion objconVer = new ContentVersion();
        objConVer.ContentLocation = 'S';
        objConVer.Title = 'AadharCard1';
        objConVer.PathOnClient = objConVer.Title +'.pdf';
        objConVer.VersionData = Blob.toPdf( testdata );
        insert objConVer;
        System.debug(' objConVer >>> '+objConVer );
        
        Id conDocId = [ Select id, ContentDocumentId From ContentVersion Where id =: objConVer.Id ].ContentDocumentId;
        System.debug(' conDocId >>> '+conDocId );
        
        ContentDocumentLink objConDocLink = new contentDocumentLink();
        objConDocLink.ContentDocumentId = conDocId;
        objConDocLink.LinkedEntityId = '5005g0000064I1nAAE';
        objConDocLink.Visibility = 'AllUsers';
        objConDocLink.ShareType = 'V';
        insert objConDocLink;
        System.debug(' objConDocLink >>> '+objConDocLink );
        
        
        Attachment myAttachment = new Attachment();
        //V1.0 Changes starts
        myAttachment.Body = objConVer.VersionData;
        //V1.0 Changes end
        myAttachment.Name = 'testCase';
        myAttachment.ParentId = '5005g0000064I1nAAE';
        insert myAttachment;
    }
    
    
    public static void createAttachments(){
        List<sObject> listOfAttachment = new List<sObject>();
        for(integer i = 1; i <= 4; i++) {
            Attachment myAttachment = new Attachment();
            //V1.0 Changes starts
            String createDoc = generateDummyFile();
            myAttachment.Body = EncodingUtil.base64Decode(createDoc);
            //V1.0 Changes end
            myAttachment.Name = 'Test files o1 '+i;
            myAttachment.ParentId = '5005g0000064I23AAE';
            listOfAttachment.add(myAttachment);
        }
        System.debug(' >> '+listOfAttachment);
        insert listOfAttachment;
    }
    
    public static String generateDummyFile(){
        return 'JVBERi0xLjQKJeLjz9MKMiAwIG9iaiA8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDExMD4+c3RyZWFtCnicK+RyCuEyNlOwMDBTCEnhMlDQNbQAMfTdDBUMjRRC0rg0PDIVcisV8hJzUxUyixW8SvMSM1MUEvNSFEoygPy0zByweEm+QlKqQnFJflEqULZYIVEhICVNQVFRMyQLaKoByEzXEK5ALgCvOB71CmVuZHN0cmVhbQplbmRvYmoKNCAwIG9iajw8L0NvbnRlbnRzIDIgMCBSL1R5cGUvUGFnZS9SZXNvdXJjZXM8PC9Qcm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQyAvSW1hZ2VJXS9Gb250PDwvRjEgMSAwIFI+Pj4+L1BhcmVudCAzIDAgUi9NZWRpYUJveFswIDAgNTk1IDg0Ml0+PgplbmRvYmoKMSAwIG9iajw8L1N1YnR5cGUvVHlwZTEvVHlwZS9Gb250L0Jhc2VGb250L0hlbHZldGljYS9FbmNvZGluZy9XaW5BbnNpRW5jb2Rpbmc+PgplbmRvYmoKMyAwIG9iajw8L0tpZHNbNCAwIFJdL1R5cGUvUGFnZXMvQ291bnQgMT4+CmVuZG9iago1IDAgb2JqPDwvVHlwZS9DYXRhbG9nL1BhZ2VzIDMgMCBSPj4KZW5kb2JqCjYgMCBvYmo8PC9Nb2REYXRlKEQ6MjAyMjExMjEwNjMwMzJaKS9DcmVhdGlvbkRhdGUoRDoyMDIyMTEyMTA2MzAzMlopL1Byb2R1Y2VyKGlUZXh0IDIuMC44IFwoYnkgbG93YWdpZS5jb21cKSk+PgplbmRvYmoKeHJlZgowIDcKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMzQ4IDAwMDAwIG4gCjAwMDAwMDAwMTUgMDAwMDAgbiAKMDAwMDAwMDQzNSAwMDAwMCBuIAowMDAwMDAwMTkyIDAwMDAwIG4gCjAwMDAwMDA0ODUgMDAwMDAgbiAKMDAwMDAwMDUyOSAwMDAwMCBuIAp0cmFpbGVyCjw8L0luZm8gNiAwIFIvSUQgWzwzMjhmOTA3NjY1NGFmNzEyZTAyZDAzMDE2YWM4ZDZlZT48YThmYjZlZGEzYWY4ZGU0MzM3NzE0NzhkNjBhNGYxYTU+XS9Sb290IDUgMCBSL1NpemUgNz4+CnN0YXJ0eHJlZgo2NDgKJSVFT0YK';
    }
}
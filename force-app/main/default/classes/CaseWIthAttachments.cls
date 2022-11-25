@RestResource(urlMapping='/createCase')
global with sharing class CaseWIthAttachments {
    
    @HttpPost
    global static ResponseWrapper createCase() {
        RestRequest request = RestContext.Request;
        ResponseWrapper result = new ResponseWrapper();
        system.debug(' Request body >> '+request.requestBody.toString());
        RequestWrapper createRequest = (RequestWrapper)JSON.deserialize(request.requestBody.toString(), RequestWrapper.class);
    
        Case objCase = new Case();
        objCase.Status = createRequest.status;
        objCase.Origin = createRequest.origin;
        
        insert objCase;



        result.caseId = objCase.Id;
        System.debug( 'case Id  >> '+objCase.Id);
        System.debug('fileData ?? '+createRequest.attachments);
       
        if(createRequest.attachments != null && createRequest.attachments.size() > 0){
            List<sObject> listOfAttachment = new List<sObject>();
            System.debug('>> attachments  >> '+createRequest.attachments);
            for(Attachments objAttachment : createRequest.attachments) {
                System.debug('fileData   >> '+objAttachment.fileData);
                Attachment myAttachment = new Attachment();
                //V1.0 Changes starts
                myAttachment.Body = EncodingUtil.base64Decode(objAttachment.fileData);
                //V1.0 Changes end
                myAttachment.Name = objAttachment.fileName;
                myAttachment.ParentId = objCase.Id;
                listOfAttachment.add(myAttachment);
            }

            if(listOfAttachment.size() > 0 )
                insert listOfAttachment;
        }

        return result;
    }

    global class RequestWrapper{
        public String status {get;set;}
        public String origin {get;set;}
        public List<Attachments> attachments;
    }

    global class Attachments {
        public String fileName;
        public String fileData;
    }

    global class ResponseWrapper{
        String caseId;
    }

    
}

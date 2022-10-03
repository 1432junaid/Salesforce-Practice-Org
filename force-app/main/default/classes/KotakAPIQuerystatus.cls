public class KotakAPIQuerystatus {
    public static HttpResponse calloutApi(){
        final String url = 'https://uatweb.kotakseconline.com/KSBusinessLayerFrwk/CRMSFA/Querystatus';
        final String  apiKey = 'HFkq6yMt4J6kTXVMfhU6HVGGAu+NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg=='; 
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
//        request.setHeader('Cache-Control', 'no-cache');
//        request.setHeader('Postman-Token', '<calculated when request is sent>');
        request.setHeader('content-type','application/json');
        System.debug('content-type :: >>'+request);
      //  request.setHeader('Content-Length', '<calculated when request is sent>');
       // request.setHeader('Host', '<calculated when request is sent>');
//		request.setHeader('ApiKey', 'HFkq6yMt4J6kTXVMfhU6HVGGAu+NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg==');

        request.setEndpoint(url+'?ApiKey='+apikey);
        System.debug('Endpoint :: >>'+request);
        request.setMethod('POST');
        System.debug('POST :: >>'+request);
        request.setBody('{"queryId":"234234","userId":"ks23435"}');
        System.debug('body:: >>'+request.getBody());
        HttpResponse response = http.send(request);
        System.debug(':::Status code :::'+response.getStatusCode());
        System.debug(response.getStatus());

        if(response.getStatusCode() == 200 ){
            
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            System.debug('>>>::Status ok ::<<<<'+response.getStatus());
            
            List<Object> emp=(List<object>) results.get('Result');
           for(Object e:emp)
           {
               System.debug(e);
           }
        }
                return response;

    }
}
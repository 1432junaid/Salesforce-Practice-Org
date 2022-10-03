public  class KotakAPICRMMaster {
    
    


    public static HttpResponse CRMMaster(){
        String ApiKey = 'HFkq6yMt4J6kTXVMfhU6HVGGAu+NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg==';
        String url = 'https://uatweb.kotakseconline.com/KSBusinessLayerFrwk/CRMSFA/CRMMaster';
        
        Http htp = new Http();
        HttpRequest  request = new HttpRequest();
        
        
        //  Blob headerValue = Blob.valueOf('HFkq6yMt4J6kTXVMfhU6HVGGAu' + ':' + 'NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg==');
        // String authorizationHeader = 'Bearer ' +EncodingUtil.base64Encode(headerValue);
        //  request.setHeader('Authorization', 'Bearer 00D5g000004x0Bi!AQ0AQH.MtA.tFzkAyS0lxezmKBGcQFzXVatu5aloy3KI6401BuPveR3zeyB2LWAR2DGe_42cii.xv4YhtVCeA2HS.SR.kf8L');
        // request.setHeader('Postman-Token','<calculated when request is sent>');
        //request.setHeader('Content-Length','<calculated when request is sent>');
        // request.setHeader('Host','<calculated when request is sent>');
        
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('ApiKey', 'HFkq6yMt4J6kTXVMfhU6HVGGAu+NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg==');
        
        system.debug('Content-Type'+request);
        
        request.setMethod('POST');
        system.debug('setMethod'+request);
        
        
        request.setEndpoint('https://uatweb.kotakseconline.com/KSBusinessLayerFrwk/CRMSFA/CRMMaster?ApiKey=HFkq6yMt4J6kTXVMfhU6HVGGAu+NkxIVQWT7J79cdmir8D7vRo2VqI+ytk4Kb2hE0ZSSTZafat63EaXjzL3JuVW9lDqY9zXKM+cDX0PrGORoEei8EBNK/rxrBcDf9Dhe4HfR08dnDlsMQYOrRv6mCt/H5rqZbinTRUL1H6STbcwLheAie5IX53MDlAxF0Lee4vm7MhAvzkcDRAnIXVv4aBz1U8nxVNqeI/6YwgZtCG2uQmKsi9oJhtPIQYrpd7Lk81POB8Be1x57Vo74OxXTuOYt6YXp3Gcs1/liyv0Hev/gUwxAG3Wzwgr8iLgHeS9FmVj1Lkz4fE5ouItbg73egg==&Content-Type=application/json');
        system.debug('setEndpoint'+request);
        
        request.setBody('{"flag":1,"employeeId":"ito2027"}');
        
        system.debug('setBody'+request);
        
        httpResponse  response = htp.send(request);
        System.debug(response.getBody());
        System.debug('Response'+String.valueOf(response));
        if(response.getStatusCode() == 200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            System.debug(response.getStatus());
            
            List<Object> emp=(List<object>) results.get('Result');
            for(Object e:emp)
            {
                System.debug(e);
            }
        }
        return response;
    }
    
}
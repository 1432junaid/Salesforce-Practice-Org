public class ApiCallout {
    public Static void callAPITimes(Integer nTimes){
        for(Integer i= 0; i<nTimes; i++){
            callApi();
        }
    }
    
    public Static void callApi(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        HttpResponse response = new HttpResponse();
        String url_1 = 'https://e5ad205b-270d-4df1-b314-02232d86635e.mock.pstmn.io/India';
		String url_2 = 'https://th-apex-http-callout.herokuapp.com';
        request.setEndpoint(url_1);
        request.setMethod('GET');
        response = http.send(request);
        if(response.getStatusCode() == 200 ){
            System.debug('API STATUS 200 >>'+response.getBody());
        }else{
            System.debug('API FAILED  >> '+response.getStatusCode());
        }
    }
}
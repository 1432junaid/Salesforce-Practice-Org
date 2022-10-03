public class PanStatusCheckAPI {
    public static void panStatusCheck(){
        String url = 'https://anypoint.mulesoft.com/mocking/api/v1/sources/exchange/assets/e42db8de-d6a7-4bff-871a-d86f2df5a62b/s-edvnz-kyc-retail-api/0.0.4/m/kyc/retail/panstatuscheck';
//		String body = '{"pan": "ATOPK7120L","name": "Suresh"}';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('channel_id', 'MOB');
        request.setHeader('transaction_id', 'ahdsflk1');
        request.setHeader('content-type', 'application/json');
        
        request.setMethod('POST');			//method 
        
        request.setEndpoint(url);			//url
        
        request.setBody(generateBody());				//body
        
		HttpResponse response  = http.send(request);        
        
        if(response.getStatusCode() == 200) {
            System.debug('status 200');
            System.debug('response'+response.getBody());
        }else {
            System.debug('status not 200');
        }
        
        
    }
    
    public static String generateBody(){
        //'{"pan": "ATOPK7120L","name": "Suresh"}'
        String body = '';
        body += '{';
        body += '"pan": '+'"ATOPK7120L"'+',';
        body += '"name": '+'"Suresh"';
        body += '}';
    	
        return body;
    }
    
}
public class CalloutService {
    
    public Static HttpResponse makeCallout(RequestWrapper request){
        try{
            
        }catch(Exception e){
            
        }
        return null;
    }
    
    public class RequestWrapper{
        String endpointUrl;
        String requestBody;
        String responseBody;
        String method;
        String className;
        Map<String, String> MAP_HEADER_VALUE;
        RequestWrapper(String endpointUrl, String method, String requestBody){
            this.endpointUrl = endpointUrl;
            this.method = method;
            this.requestBody = requestBody;
        }
    }
}
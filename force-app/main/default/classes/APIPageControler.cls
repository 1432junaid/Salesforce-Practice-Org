public class APIPageControler {
 
    //@InvocableMethod(label = 'call google api for location')
    @future(callout = true)
    public  static void save(){
            string city ;
     string key = '10b1758a6f044f739ed8497034a2b6e5';       
	 string url = 'https://api.opencagedata.com/geocode/v1/json?';
     String lat ;
     String lng ;
        List<String> listResponse  = new List<String>();

        system.debug(city);
        string q = city;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('content-type', 'application/json');
        request.setEndpoint(url+'key='+key+'&q='+q);
        System.debug( url+'key='+key+'&q='+q);
        
        request.setMethod('GET');
        
        HttpResponse  response = http.send(request);
        listResponse.add(response.getBody());
        //system.debug('response -> '+response.getBody());
        //        request.getBody('{"city":"q"}');
        if(response.getStatusCode() == 200){
            System.debug('status code success ::');
//            listResponse.add('1');
//            System.debug(response.getBody());		// get response here 
            JSON2Apex data = (JSON2Apex)System.JSON.deserialize(response.getBody(), JSON2Apex.class);
            System.debug('date ->'+data);
//            System.debug('data.Results:::>>>> '+data.results[0].annotations.DMS.lat);
            lat = data.results[0].annotations.DMS.lat;
            lng = data.results[0].annotations.DMS.lng;
            
            
//            List<object> result = new data.results();
//            System.debug('DMS::::::  '+data.DMS);
//            Results result = new Results();
            
//            for(Results rs : data.results){
//                System.debug('???     '+rs.annotations);
//            }
            
           // xyz.Annotations ab = new xyz.Annotations();

/*            
            map<String,object> jsonBody = 	(map<String,object>)json.deserializeUntyped(response.getBody());
            system.debug(jsonBody);
            system.debug(jsonBody.get('results'));
            map<String,object> res = 	(map <String,object>)((List<object>)jsonBody.get('results'))[0];
            system.debug(res);
            map<String,object> ano = (map <String,object>)res.get('annotations');
            system.debug(ano);
            map<String,object> Dms = (map <String,object>)ano.get('DMS');
            system.debug(Dms);
            String latt = (String)Dms.get('lat');
            String longitude = (String)Dms.get('lng');
            system.debug(latt);
          
*/
            //return response.getBody();
        }
    }
    
}
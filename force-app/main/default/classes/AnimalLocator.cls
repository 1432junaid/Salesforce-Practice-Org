public class AnimalLocator {

        public Animal animal;
        class Animal {
            public Integer id;
            public String name;
            public String eats;
            public String says;
        }

    
    public static String getAnimalNameById(Integer id){
        String url = 'https://th-apex-http-callout.herokuapp.com/animals/'+String.valueOf(id);
        System.debug(url);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json');
		request.setEndpoint(url);
        request.setMethod('GET');
        HttpResponse response = http.send(request);    
        if(response.getStatusCode() == 200 ){                    
            AnimalLocator obj = (AnimalLocator)System.JSON.deserialize(response.getBody(),AnimalLocator.class);
            String result = obj.animal.name;		
			return result;
        }
        return null;
    }
}
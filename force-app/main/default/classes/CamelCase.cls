public class CamelCase {
	
    public integer FindtheCount(String str){
        integer count=0;
        
        //write the code below
        if(str.charAt(0)>=65 && str.charAt(0)<=90 == false){
        		for(integer i = 1; i<str.length(); i++){
                    if(str.charAt(i)>=65 && str.charAt(i)<=90)count++;
	        }
		}else return 0;
        
        
        //write the code above
        return count;
    }
}
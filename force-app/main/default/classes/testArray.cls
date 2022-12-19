public class testArray {
    public List<Integer> sortArrayAsc(List<Integer> arrayOfInteger){
        if(arrayOfInteger != null && arrayOfInteger.size() > 0 ){
            for(Integer i = 0; i < arrayOfInteger.size()-1 ; i++){
                System.debug('for loop i = '+i+' >> '+arrayOfInteger);
                for(Integer j = i+1; j < arrayOfInteger.size(); j++){
                    if( arrayOfInteger[j] < arrayOfInteger[i]){
                        Integer temp = arrayOfInteger[i];
                        arrayOfInteger[j] = arrayOfInteger[i];
                        arrayOfInteger[i] = temp;
                    }
                }
            }
        }
        return arrayOfInteger;
    }

}
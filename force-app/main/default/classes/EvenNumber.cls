public class EvenNumber {
    public void printEven(){
        Integer range = 50;
        List<Integer> r = new List<Integer>();
        for(Integer i = 1; i <= range; i++){
    		r.add(i);
        }
        for(Integer j : r){
    		if(math.mod(j, 2) == 0)
          {
            System.debug(j);
           }
        }
        System.debug(r);
    }

}
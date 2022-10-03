public class ListDemoIsEmpty {
    public void isTrue(){
        List<String> ls = new List<String>();
        System.debug(ls.isEmpty());        
    }
    public void removeDuplicates(){
        List<Integer> l = new List<Integer>();
        l.add(1);
        l.add(1);
        l.add(2);
        l.add(2);
 		Set<Integer> s = new Set<Integer>();       
        for(Integer i = 0; i<l.size(); i++){
            s.add(l.get(i));
        }
        System.debug(s);
    }

}
public class countTheSum {
    public List<Integer> findtheSum(List<Integer> list1){
        List<Integer> result;
        Integer min = list1.get(0);
        Integer max = list1.get(0);
        Integer sum = 0;
        for(Integer i = 0; i < list1.size(); i++){
            sum += list1.get(i);
            if(min > list1.get(i)) min = list1.get(i);
            if(max < list1.get(i)) max = list1.get(i);
        }
        result.add(sum-min);
        result.add(sum-max);
        return result;
    }
}
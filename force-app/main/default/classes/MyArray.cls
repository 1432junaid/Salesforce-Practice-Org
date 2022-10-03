public class MyArray {
    public Integer[] arr;
    public Integer[] MyArray() {
        this.arr = new Integer[0];
        return this.arr;
    }
    
    public void add(){
        
    }
    
    public Integer[] MyArray(Integer size){
        this.arr = new Integer[size];
        return this.arr;
    }
    
    
    public Integer size(){
        return this.arr.size();
    }
}
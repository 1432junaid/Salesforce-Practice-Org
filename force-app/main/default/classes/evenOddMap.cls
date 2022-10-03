public class evenOddMap
{
public void evenOdd()
{
    Map<Integer,String> mp= new Map<Integer, String>();
    
    for(Integer i=1; i<=100; i++)
    {
    	if(Math.mod(i, 2)==0)
    	mp.put(i,'Even');
    
    else
    mp.put(i,'Odd');
    }
    
    for(Integer myKey : mp.keySet())
	    System.debug(myKey+' '+mp.get(myKey));

}
}
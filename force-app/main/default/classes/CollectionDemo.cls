public class CollectionDemo {
    public void getNames(){
        List<String> name = new List<String>();
        name.add('junaid');
        name.add('hemant');
        name.add('Suraj');
        name.add('Raj');
		System.debug(name);
        
        Set<String> name1 = new Set<String>();
        name1.add('junaid');
        name1.add('hemant');
        name1.add('Suraj');
        name1.add('Raj');
        name1.add('junaid');
        System.debug(name1);
	
        Map<String,String> mp = new Map<String,String>();
        mp.put('name1','junaid');
        mp.put('name2','zaid');
        mp.put('name3','raj');
        mp.put('name1','jd');
        System.debug(mp);
    }
}
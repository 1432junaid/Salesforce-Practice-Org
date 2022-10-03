public class QueueableClass1 implements Queueable{
    
    public QueueableClass1(){
        
    }
    //ID jobID = System.enqueueJob(new QueueableClass1());
    
	public void execute(QueueableContext context) {
        System.debug('QueueableClass1 --> execute');  
        ID jobID = System.enqueueJob(new QueueableClass2());
        AsyncApexJob jobInfo = [SELECT Status,NumberOfErrors FROM AsyncApexJob WHERE Id=:jobID];
		System.debug('queue2 ->jobInfo --> '+jobInfo);        
    }
    
    public class QueueableClass2 implements Queueable{
        public QueueableClass2(){}
        public void execute(QueueableContext context) {
            System.debug('QueueableClass2 --> execute');        
        }  
    }    
}
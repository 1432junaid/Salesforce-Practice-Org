public class TestQueueable implements Queueable {
	Boolean queueOne = true;
    Boolean queueTwo = true;
    
    public TestQueueable(){
    }
    
    public void execute(QueueableContext Qc){
        System.enqueueJob(new QueueOne() );
        System.enqueueJob(new QueueOne() );
    }
    
    public static void callQueueable() {
        System.enqueueJob(new QueueOne() );
        System.enqueueJob(new QueueTwo() );
    }
}
public class QueueOne implements Queueable{
    public QueueOne(){
        
    }
    
    public void execute(QueueableContext QC){
        //APIPageControler.save();
        System.debug('Queueable 1');
        //System.debug( 'Job Id --> '+QC.getJobId() );
        system.enqueueJob(new QueueTwo());
        system.enqueueJob(new QueueTwo());
        system.enqueueJob(new QueueTwo());
        system.enqueueJob(new QueueTwo());
       
    }
}
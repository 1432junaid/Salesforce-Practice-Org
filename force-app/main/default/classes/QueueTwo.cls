public class QueueTwo implements Queueable{
    public QueueTwo(){}
    public void execute(QueueableContext QC){
        //APIPageControler.save();
        system.debug('Queueable 2');
        System.debug( 'Job Id --> '+QC.getJobId() );
    }
}
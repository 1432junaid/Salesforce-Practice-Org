public class InvoiceControllerNew {
    public Invoice__c inv;

	public InvoiceControllerNew(ApexPages.StandardController controller) {
		inv = [SELECT id,Invoice_total_price__c, Invoice_Desc__c FROM Invoice__c where id =: ApexPages.currentPage().getParameters().get('id')];
	}
	public Invoice__c getinv() {
		return inv;
	}
	public PageReference save() {
		upsert inv;
		PageReference pref = new ApexPages.StandardController(inv).view();
		return pref;
	}
}
import { LightningElement , api} from 'lwc';
import Pizza_Price_Field from '@salesforce/schema/Pizza_Menu__c.Pizza_Price__c'
import Pizza_Quantity_Field from '@salesforce/schema/Pizza_Menu__c.Pizza_Quantity__c'

export default class RecordEditForm extends LightningElement {
    @api recordId;
    @api objectApiName;
    spinnerActive = false;
    pizzaPrice = Pizza_Price_Field;
    pizzaQuality = Pizza_Quantity_Field;
    fields = [Pizza_Price_Field, Pizza_Quantity_Field];


    updateHandler(event){
        this.spinnerActive = true;
        setTimeout(this.doExpensiveThing.bind(this), 200); // Adjust as necessary
    }
    doExpensiveThing() {
        this.spinnerActive = false;
        // Do something here
    }
}
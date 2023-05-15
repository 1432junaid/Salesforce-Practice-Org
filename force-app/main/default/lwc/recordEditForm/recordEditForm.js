import { LightningElement , api} from 'lwc';
import Pizza_Price_Field from '@salesforce/schema/Pizza_Menu__c.Pizza_Price__c'
import Pizza_Quantity_Field from '@salesforce/schema/Pizza_Menu__c.Pizza_Quantity__c'
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


export default class RecordEditForm extends LightningElement {
    @api recordId;
    @api objectApiName;
    spinnerActive = false;
    pizzaPrice = Pizza_Price_Field;
    pizzaQuality = Pizza_Quantity_Field;
    disableButton = true;

    updateHandler(event){
        this.spinnerActive = true;
        setTimeout(this.doExpensiveThing.bind(this), 200); // Adjust as necessary
        this.showToast("Update Successfull", "Record updated");
    }

    handleOnChange(event){ 
        this.disableButton = false;
        // alert(event.target.value);
    }

    doExpensiveThing() {
        this.spinnerActive = false;
        // Do something here
    }

    showToast(title, msg) {
        const event = new ShowToastEvent({
            title: title,
            message: msg,
            variant: 'success',
        });
        this.dispatchEvent(event);
    }
   

}
import { LightningElement } from 'lwc';

// this is a special library for toast msg
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

// var     :   scope is function and it is     mutable 
// let     :   scope is only inside the block  mutable
// const   :   scope is only inside the block  non-mutable




export default class PracticeLWC extends LightningElement {
    myTitle = "this is title in js file";

    // what ever inside this will get call on render / page reload
    connectedCallback(){
        var x = false;
        var name = "Junaid ";
        if(x == true ){
            window.alert("x is equal to true and Name = "+name);
        }
    }

    toastTitle = 'dynamic toast title'
    eventVariant = 'warning';
    handleClick(){              //this is just a method name 
        window.alert("handle click is run for error");
        this.showToastFunction(this.toastTitle);            //calling a method
    }

    
    showToastFunction(titleToast, variantType ){
        const event = new ShowToastEvent({
            title : titleToast,
            message : 'Toast message',
            variant : variantType,
        })
        this.dispatchEvent(event);                          //to trigger the toast msg
    }


}
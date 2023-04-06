import { LightningElement, track } from 'lwc';

// this is a special library for toast msg
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

// var     :   scope is function and it is     mutable 
// let     :   scope is only inside the block  mutable
// const   :   scope is only inside the block  non-mutable




export default class PracticeLWC extends LightningElement {
    myTitle = "this is title in js file";
    
    // what ever inside this will get call on render / page reload
    connectedCallback(){
        // window.alert("1. called connected call back");
        var x = false;
        var name = "Junaid ";
        if(x == true ){
            window.alert("this is a function af add = "+this.Add(4, 6));
            // window.alert("x is equal to true and Name = "+name);
        }
    }

    toastTitle = 'dynamic toast title'
    eventVariant = 'success';
    handleClick(){              //this is just a method name 
        window.alert("handle click is run for error");
        this.showToastFunction(this.toastTitle);            //calling a method
    }



    // track decorator is reactive it re-render the DOM if any changes occure
    @track fullName = {firstname : "", lastname : ""}
    handleChange(event){
        const field = event.target.name;
        // window.alert(field);
        if(field === 'firstName'){
            this.fullName.firstname = event.target.value;
        }else if(field === 'lastName'){
            this.fullName.lastname = event.target.value;
        }

    }

    showToastFunction(titleToast, variantType ){    //1st way to write a function
        const event = new ShowToastEvent({
            title : titleToast,
            message : 'Toast message',
            variant : variantType,
        })
        this.dispatchEvent(event);                          //to trigger the toast msg
    }


    Add = (x, y) =>{
        return x+y;
    }

}
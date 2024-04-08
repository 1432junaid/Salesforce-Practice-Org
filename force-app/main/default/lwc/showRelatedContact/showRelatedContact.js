import { LightningElement, track, api  } from 'lwc';
import getAccountContacts from '@salesforce/apex/ImperativeMethodsForLwc.getAccountContacts';

const columns = [
    {label : "Contact Name", fieldName : "Name"},
    {label : "Mobile Phone", fieldName : "MobilePhone"},
    {label : "Email", fieldName : "Email"},
]

export default class ShowRelatedContact extends LightningElement {
    @track toggleShowHide = "Show Contacts";
    @api recordId;
    @track data = [];
    @track columns = columns;
    @track showData = false;
    delButton = false;

    handleClick(event){
        const label = event.target.label;

        alert('selected button >> '+event.target.label);
        if (label === "Show Contacts") {
            this.toggleShowHide = "Hide Contacts";
            this.showData = true;
        }else if(label === "Hide Contacts") {
            this.toggleShowHide = "Show Contacts";
            this.showData = false;
        }
    }

    handleDelClick(event){
        this.delButton = true;
        label = event.target.label;
        alert('selected button >> '+event.target.label);
    }

    connectedCallback(){
        getAccountContacts({recordId : this.recordId})
        .then(result => {
            this.data = result;
        })
        .catch(error => {
            console.log("Error occured");
        })
    }


    onRowSelection( event ) {
        this.delButton = true;
        // const selectedRows = event.detail.selectedRows;
        // console.log(
        //     'selectedRows are ',
        //     JSON.stringify( selectedRows )
        // );
    }
    

}
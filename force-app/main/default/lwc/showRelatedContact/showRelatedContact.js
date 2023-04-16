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

    handleClick(event){
        const label = event.target.label;
        if (label === "Show Contacts") {
            this.toggleShowHide = "Hide Contacts";
            this.showData = true;
        } else if(label === "Hide Contacts") {
            this.toggleShowHide = "Show Contacts";
            this.showData = false;
        }
    }

    connectedCallback(){
        window.alert("connected Call back with id "+this.recordId);

        getAccountContacts({recordId : this.recordId})
        .then(result => {
            this.data = result;
            // window.alert("recordId : "+this.recordId);
        })
        .catch(error => {
            console.log("Error occured");
        })

        // window.alert("data -> "+this.data);
    }
    

}
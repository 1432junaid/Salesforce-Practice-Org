import { LightningElement, wire, track } from 'lwc';
import listOfAccount from '@salesforce/apex/WireClass.getAccount'
const columns = [
    {label : 'Name', fieldName : 'Name'},
    {label : 'SFDC_ID', fieldName : 'Id'},
]
export default class WirePracticeLwc extends LightningElement {
    @track columns = columns;
    @track data = [];
    
    @wire(listOfAccount)
    wiredAccountList({data, error}) {
        if (data) {
            this.data = data;   
        } else {
            console.log("Error Occured");
        }
    }
}
import { LightningElement, track} from 'lwc';
import getPizzaList from '@salesforce/apex/ImperativeMethodsForLwc.getPizzaList';
const columns = [
    {label : 'Id', fieldName : 'Id'},
    {label : 'Name', fieldName : 'Name'}
]

export default class ImperativeMethodLwc extends LightningElement {
    @track columns = columns;
    @track data = [];
    connectedCallback(){
        getPizzaList()
        .then(result => {
            this.data = result;
        })
        .catch(error => {
            console.log("error Occured");
        });
    }
}
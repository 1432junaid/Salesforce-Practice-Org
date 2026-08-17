import { LightningElement, api, track, wire} from 'lwc';
import getContactList from '@salesforce/apex/ChildListController.getContactList'

export default class ChildList extends LightningElement {
    @api accountId;
    @track relatedContacts = [];

   
    connectedCallback(){
        console.log('connected call back of child comp '+this.accountId);
        this.getContactList();
        console.log(' contacts '+JSON.stringify(this.relatedContacts));
    }

    getContactList(){
        getContactList({ accountId:this.accountId})
        .then(result => {
            this.relatedContacts = result;
        })
        .catch(error => {

        })
    }
}
import { LightningElement, api } from 'lwc';
export default class RelatedContacts extends LightningElement {
    @api recordId;

    connectedCallback(){
        console.log('record Id >> '+this.recordId);
    }
}
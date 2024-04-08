import { LightningElement,api } from 'lwc';

export default class Hello extends LightningElement {
    @api objectApiName;
    @api recordId;
    areDetailsVisible = false;
    
    handleClick(event){
        this.areDetailsVisible = this.areDetailsVisible === true ? false : true;
        console.log('recordId>>>> ',recordId);
    }
}
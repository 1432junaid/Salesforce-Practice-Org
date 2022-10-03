import { LightningElement, wire } from 'lwc';
import createContact from '@salesforce/apex/CreateRecords.createContact';
export default class CreateContact extends LightningElement {
    @wire( createContact ) cases;
    
}
import { LightningElement , api} from 'lwc';
import PizzaName from '@salesforce/schema/Pizza_Menu__c.Name';
import PizzaPrice from '@salesforce/schema/Pizza_Menu__c.Pizza_Price__c';
import PizzaQuality from '@salesforce/schema/Pizza_Menu__c.Pizza_Quantity__c';


export default class RecordViewForm extends LightningElement {
    PizzaName = PizzaName;
    PizzaPrice = PizzaPrice;
    PizzaQuality = PizzaQuality;
    cardTitle = "Record View Form";

    @api recordId;
    @api objectApiName;
     
}
import { LightningElement , api} from 'lwc';

export default class ChildCompLwc extends LightningElement {
    @api itemName = "This is Item Name of Child Component";
    @api onClickHandleChild() {
        this.itemName = "value change by on click button";
    }
}
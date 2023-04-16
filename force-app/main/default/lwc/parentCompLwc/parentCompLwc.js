import { LightningElement } from 'lwc';

export default class ParentCompLwc extends LightningElement {
    onClickHandleParent() {
        this.template.querySelector("c-child-comp-lwc").onClickHandleChild();
    }
}
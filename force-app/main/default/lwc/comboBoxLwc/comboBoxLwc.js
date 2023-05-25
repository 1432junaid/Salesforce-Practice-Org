import { LightningElement , track} from 'lwc';
import getLastAccount from '@salesforce/apex/MyUtility.getLastAccount';

export default class ComboBoxLwc extends LightningElement {
    // get options(){
    //     // return [
    //     //     { label: 'New', value: 'new' },
    //     //     { label: 'In Progress', value: 'inProgress' },
    //     //     { label: 'Finished', value: 'finished' },
    //     // ];

    //     return listOfAccount;
    // };
    value;
    @track listOfAccount = [];
    connectedCallback(){
        this.getLastAccount();
    }

    getLastAccount(){
        getLastAccount()
            .then(result => {
                console.log('list of Account ',result);
                console.log('list of Account ',result["0015g00000V0JAGAA3"]);
                // if(result){
                    for(let x in result){
                        // alert('Result key>>'+x);
                        this.listOfAccount.push({label:result[x], value: x});
                    } 
                // }
                // listOfAccount = result;
                console.log('Account List  ',this.listOfAccount.length);
            })
            .catch(error => {
                console.log('Error in getRecord : '+error);
            })
    }

    handleChange(event) {
        this.value = event.detail.value;
    }
}
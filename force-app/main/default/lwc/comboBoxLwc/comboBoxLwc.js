import { LightningElement , track} from 'lwc';
import getLastAccount from '@salesforce/apex/MyUtility.getLastAccount';

export default class ComboBoxLwc extends LightningElement {
    value = "JD";
    @track listOfAccount;
    
    connectedCallback(){
        this.getLastAccount();
    }

    getLastAccount(){
        getLastAccount()
        .then(result => {
                let listAcc = [];
                this.listOfAccount = [];
                console.log('list of Account ',result);
                console.log('list of Account ',result["0015g00000V0JAGAA3"]);
                // if(result){
                    for(let x in result){
                        // alert('Result key>>'+x);
                        this.listOfAccount.push({label:result[x], value: x});
                        listAcc.push({label:result[x], value: x});
                    } 
                // }
                // listOfAccount = result;
                console.log('Account List  ',this.listOfAccount);
                console.log('Account List  ',listAcc.push);
                // this.listOfAccount = listAcc;
            })
            .catch(error => {
                console.log('Error in getRecord : '+error);
            })
    }

    handleChange(event) {
        this.value = event.detail.value;
    }
}
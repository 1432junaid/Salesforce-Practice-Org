import { LightningElement, wire } from 'lwc';

export default class HideAndShowFields extends LightningElement {
    
    showFields = false;

    get picklistValuesOfCar() {
        return [
            { label: 'Own car with Own permit', value: 'new' },
            { label: 'Own car with hired permit', value: 'inProgress' },
            { label: 'Others Car', value: 'finished' },
        ];
    }

    get picklistValuesOfDriver() {
        return [
            { label: 'Self', value: 'new' },
            { label: 'Hired', value: 'inProgress' },
            { label: 'Taxi Stand driver', value: 'finished' },
        ];
    }

    get picklistValuesOfLocation(){
        return [
            { label: 'Metro', value:'new'},
            { label: 'Non-Metro', value:'in-progress'},
        ];
    }

    get picklistValuesOfSetup(){
        return [
            { label: 'Own', value:'Own'},
            { label: 'Rented', value:'Rented'}
        ];
    }


    get picklistValuesOfDealer(){
        return [
            { label: 'Wholesaler', value:'Wholesaler'},
            { label: 'Retail', value:'Retail'}
        ];
    }

}
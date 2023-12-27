import { LightningElement, api } from 'lwc';
import uploadFile from '@salesforce/apex/MyUtility.uploadFile';

export default class FileUploadExample extends LightningElement {
    @api recordId;

    get acceptedFormats() {
        return ['.pdf', '.png'];
    }

    handleUploadFinished(event) {
        // Get the list of uploaded files
        const uploadedFiles = event.detail.files;
        console.log('record Id  >> ',this.recordId);
        console.log('uploadedFiles = '+JSON.stringify(uploadedFiles));
        // alert('No. of files uploaded : ' + uploadedFiles.length);


        uploadFile({ recordId : this.recordId, contentVersionId : uploadedFiles[0].contentVersionId })
        .then(result=>{
            console.log('result >>', result);
        })
        .catch(error => {
            console.log("Error occured",error.message);
        })

    }


}
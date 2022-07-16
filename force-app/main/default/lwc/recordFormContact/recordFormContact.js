import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordFormContact extends LightningElement {
    recordId = '0038c00002iKmIlAAK';
    objectName = CONTACT_OBJECT;
    

    successHandler (){
        const event = new ShowToastEvent({
            title: "Success!",
            message: "The contact saved successfully",
            variant : "success",
            mode: "sticky"
    });
    this.dispatchEvent(event);
}
errorHandler(){
    const errorToast = new ShowToastEvent({
        title : "Error",
        message : "Something went wrong!",
        variant : "error",
        mode: "sticky"
    });
    this.dispatchEvent(errorToast);
}
}
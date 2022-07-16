import { LightningElement, track } from 'lwc';

export default class CompanyDetails extends LightningElement {
 @track details = {
        name : "Jeff Bezos",
        title : "Executive Chairman",
        company : "amazon" }
    handleChange(event){
        this.details.company = event.target.value;
}
}
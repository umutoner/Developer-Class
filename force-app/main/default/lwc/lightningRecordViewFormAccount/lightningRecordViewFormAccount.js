import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
// import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class LightningRecordViewFormAccount extends LightningElement {
    objectName = ACCOUNT_OBJECT;
    recordId = '0018c00002FIoM0AAL';
    fields = {
        name: NAME_FIELD, 
        type: TYPE_FIELD, 
        industry: INDUSTRY_FIELD, 
        phone: PHONE_FIELD, 
        annualRevenue: ANNUALREVENUE_FIELD, 
        rating:RATING_FIELD};
}
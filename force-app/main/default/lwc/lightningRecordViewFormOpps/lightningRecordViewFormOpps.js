import { LightningElement } from 'lwc';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';
import ACCOUNTNAME_FIELD from '@salesforce/schema/Opportunity.AccountId';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';


export default class LightningRecordViewFormOpps extends LightningElement {
    objectName = OPPORTUNITY_OBJECT;
    recordId = '0068c00000rbhAKAAY';
    fields = {
        name: NAME_FIELD, 
        type: TYPE_FIELD, 
        amount: AMOUNT_FIELD, 
        leadSource: LEADSOURCE_FIELD, 
        accountName: ACCOUNTNAME_FIELD, 
        stageName:STAGENAME_FIELD};
}

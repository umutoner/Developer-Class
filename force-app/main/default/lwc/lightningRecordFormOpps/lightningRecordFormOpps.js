import { LightningElement } from 'lwc';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';
import ACCOUNTNAME_FIELD from '@salesforce/schema/Opportunity.AccountId';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';

export default class LightningRecordFormOpps extends LightningElement {
    recordId = '0068c00000rbhAKAAY';
    objectName = OPPORTUNITY_OBJECT;
    fields = [NAME_FIELD, ACCOUNTNAME_FIELD, STAGENAME_FIELD, TYPE_FIELD,AMOUNT_FIELD,LEADSOURCE_FIELD]
}
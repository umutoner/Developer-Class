import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import ACCOUNTNAME_FILED from '@salesforce/schema/Contact.AccountId';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import MOBILE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import OWNER_FIELD from '@salesforce/schema/Contact.OwnerId';

export default class LightningRecordViewFormContact extends LightningElement {
    recordId = '0038c00002iKmIlAAK';
    objectName = CONTACT_OBJECT;
    fields = {name: NAME_FIELD, 
        AccountId: ACCOUNTNAME_FILED, 
        phone: PHONE_FIELD, 
        email: EMAIL_FIELD, 
        mobilePhone: MOBILE_FIELD,
        owner: OWNER_FIELD
    }
}
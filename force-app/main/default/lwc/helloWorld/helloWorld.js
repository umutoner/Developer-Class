import { LightningElement } from 'lwc';

export default class helloWorld extends LightningElement {
    name; //undefined
    fullname = "Salesforce Developer" //string
    age = 30;
    location ={ city: "Houston", 
                country: "United States",
                postalCode: "50033"
            };
    fruits = ["Banana", "Orange", "Pomogranate","Pinapple"]; //array

    //write methods
    getLocation(){
        return this.location.city
    }
}
import { LightningElement } from 'lwc';

export default class TemplateLooping1 extends LightningElement {

    showContent = false;

    fruits = ["Apple","Banana","Mango","Orange"];

    contacts = [{firstname: "Jeff", lastname: "Bezos", title: "Executive Chairman"},
        {firstname: "Satya", lastname: "Nadella", title: "Chief Executive Officer"},
        {firstname: "Sundar", lastname: "Pichai", title: "Chief Executive Officer"}];
}
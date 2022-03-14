import { LightningElement, api } from 'lwc';
import getPokemonDetails from '@salesforce/apex/ShowPokemonController.getPokemonDetails';

export default class ShowPokemon extends LightningElement {
    @api recordId;
    
    
    renderedCallback(){
        this.getPokemon();
    }

    getPokemon() {
        getPokemonDetails({contactID : this.recordId})
            .then(result => {
                console.log(JSON.stringify(result));
            })
            .catch(error => {
                console.log(JSON.stringify(error));
            });
    }
}
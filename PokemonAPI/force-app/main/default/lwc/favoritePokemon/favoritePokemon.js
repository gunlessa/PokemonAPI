import { LightningElement, api, track} from 'lwc';
import getPokemonDetails from '@salesforce/apex/ShowPokemonController.getPokemonDetails';
export default class FavoritePokemon extends LightningElement {
    @track pokemonImg;
    @api recordId;
    
    
    renderedCallback(){
        this.getPokemon();
    }

    getPokemon() {
        getPokemonDetails({contactID : this.recordId})
            .then(result => {
                console.log(JSON.stringify(result));
                pokemonImg = result.sprites.front_default;
            })
            .catch(error => {
                console.log(JSON.stringify(error));
            });
    }
    
    console.log(pokemonImg);

}
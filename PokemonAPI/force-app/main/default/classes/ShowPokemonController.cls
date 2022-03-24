public with sharing class ShowPokemonController {

    @AuraEnabled(Cacheable = true)
    public static PokemonWrapper.PokemonDetailWrapper getPokemonDetails(Id contactID){
        Contact contact = [SELECT Id, FavoritePokemon__c FROM Contact WHERE Id =: contactID LIMIT 1];
        return PokemonService.pokemonCallout(contact);
    }
}

public with sharing class PokemonCallout {
    
    public static PokemonWrapper.PokemonDetailWrapper pokemonCallout(Contact contact) {
        Integration__mdt pokemonAPISettings = [SELECT EndPoint__c, Method__c FROM Integration__mdt WHERE DeveloperName = 'PokemonAPI'];
        String endPointPokemon = pokemonAPISettings.EndPoint__c + Contact.FavoritePokemon__c;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPointPokemon);
        request.setMethod(pokemonAPISettings.Method__c);

        HttpResponse response = http.send(request);
        String jsonBody = response.getBody();

        PokemonWrapper.PokemonDetailWrapper pokemonDetails = new PokemonWrapper.PokemonDetailWrapper();

        if (response.getStatusCode() == 200 && jsonBody != null) {
            pokemonDetails = (PokemonWrapper.PokemonDetailWrapper) JSON.deserialize(jsonBody, PokemonWrapper.PokemonDetailWrapper.class);
        }
        return pokemonDetails;
    }
}

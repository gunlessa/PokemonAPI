public with sharing class PokemonCallout {
    
    public static void pokemonCallout(Contact contact) {
        Integration__mdt pokemonAPISettings = [SELECT EndPoint__c, Method__c FROM Integration__mdt];
        String endPointPokemon = pokemonAPISettings.EndPoint__c + Contact.FavoritePokemon__c;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPointPokemon);
        request.setMethod(pokemonAPISettings.Method__c);

        HttpResponse response = http.send(request);
        String jsonBody = response.getBody();

        if (response.getStatusCode() == 200) {
            System.debug('jsonBody' + jsonBody);
        }
    }
}

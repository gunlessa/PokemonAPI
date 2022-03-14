public with sharing class PokemonService {

    public static PokemonWrapper.PokemonDetailWrapper pokemonCallout(Contact contact) {
        return PokemonCallout.pokemonCallout(contact);
    }
}

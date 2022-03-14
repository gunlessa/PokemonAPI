public class PokemonWrapper {
    
    public class PokemonDetailWrapper {
        @AuraEnabled
        public SpritesWrapper sprites;
        @AuraEnabled
        public List<StatsWrapper> stats;
    }

    public class SpritesWrapper {
        @AuraEnabled
        public String front_default;
        @AuraEnabled
        public OtherWrapper other;
    }

    public class OtherWrapper {
        @AuraEnabled
        public DreamWorldWrapper dream_world;
    }

    public class DreamWorldWrapper {
        @AuraEnabled
        public String front_default;
    }

    public class StatsWrapper {
        @AuraEnabled
        public Integer base_stat;
        @AuraEnabled
        public StatWrapper stat;
    }

    public class StatWrapper {
        @AuraEnabled
        public String name;
    }
}

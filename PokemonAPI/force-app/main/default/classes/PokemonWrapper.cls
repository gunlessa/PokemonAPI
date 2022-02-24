public class PokemonWrapper {
    
    public class PokemonDetailWrapper {
        public SpritesWrapper sprites;
        public List<StatsWrapper> stats;
    }

    public class SpritesWrapper {
        public String front_default;
        public OtherWrapper other;
    }

    public class OtherWrapper {
        public DreamWorldWrapper dream_world;
    }

    public class DreamWorldWrapper {
        public String front_default;
    }

    public class StatsWrapper {
        public Integer base_stat;
        public StatWrapper stat;
    }

    public class StatWrapper {
        public String name;
    }
}

#include "..\..\script_mod.hpp"
#define FACTION nato_vanilla

class TRIPLES(PREFIX,f,FACTION) : base {
  displayName = "NATO (Vanilla)";
  flag = QUOTE(/PREFIX/data/textures/flags/FACTION.paa);
  icon = QUOTE(/PREFIX/data/textures/icons/FACTION.paa);
  class units : units {
    class rifleman : base {};
    class grenadier : base {};
    class autorifleman : base {};
    class machinegunner : base {};
    class assistant_gunner : base {};
    class light_antitank : base {};
    class heavy_antitank {};
    class assistant_antitank {};
    class teamleader {};
    class squadleader {};
    class officer {};
    class crewman {};
    class crew_commander {};
    class helicrew {};
    class pilot {};
  };
  class groups : groups {
    class infantry : infantry {
      
    };
    class motorized : motorized {

    };
    class mechanized : mechanized {

    };
    class armour : armour {

    };
    class air : air {

    };
  };
};
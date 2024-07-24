#include "script_component.hpp"
class DOUBLES(PREFIX,COMPONENT) {
  class functions {
    file = QUOTE(PREFIX\functions\COMPONENT);
    class getRole {};
    class init {};
    class setRole {};
    class turretChangedEH {};
    class vehicleChangedEH {};
    class weaponChangedEH {};
  };
};

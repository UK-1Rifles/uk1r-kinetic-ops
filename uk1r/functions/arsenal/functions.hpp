#include "script_component.hpp"
class DOUBLES(PREFIX,COMPONENT) {
  class functions {
    file = QUOTE(PREFIX\functions\COMPONENT);
    class add {};
    class clear {};
    class export {};
    class exportMagazines {};
    class init {};
    class remove {};
    class update {};
    class updateAll {};
    class validateLoadout {};
  };
};
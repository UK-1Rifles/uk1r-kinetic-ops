#include "\x\cba\addons\main\script_macros_mission.hpp"

#define DISABLE_COMPILE_CACHE 1

#ifdef DISABLE_COMPILE_CACHE
    #undef PREP
    #define PREP(fncName) TRIPLES(ADDON,fnc,fncName) = compile preprocessFileLineNumbers QUOTE(PATHTO_SYS('','',DOUBLES(fnc,fncName)))
#else
    #undef PREP
    #define PREP(fncName) [QUOTE(PATHTO_SYS('','',DOUBLES(fnc,fncName))), QFUNC(fncName)] call CBA_fnc_compileFunction
#endif

#define PRINT(x) diag_log x
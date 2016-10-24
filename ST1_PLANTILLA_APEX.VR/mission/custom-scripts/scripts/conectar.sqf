//Define Terminal // Define el objeto Terminal
_terminal = _this select 0;
//Define Terminal Colors // Define el color de la Terminal
[_terminal,"red","orange","green"] remoteExec ["BIS_fnc_dataTerminalColor", [0,-2] select isDedicated, true];
//Add Hold Action // Añade la Hold Action
[
_terminal, /* 0: Objetivo */
"Interceptar Comunicaciones", /* 1: Titulo */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_connect_ca.paa", /* 2: Icono en espera */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_connect_ca.paa", /* 3: Icono en progreso */
"_this distance _target < 3",  /* 4: Condicion para mostrar acción */
"_caller distance _target < 3",  /* 5: codigo a ejecutar en progreso */
{[_this select 0,3] call BIS_fnc_dataTerminalAnimate;}, /* 6: codigo a ejecutar cuando inicie */
{}, /* 7: codeTick */
{"mission\custom-scripts\scripts\download\progress.sqf" remoteExec ["execVM", 0, false]; [(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove",[0,-2] select isDedicated,true];},    /* 8: codeCompleted */
{[_this select 0,0] call BIS_fnc_dataTerminalAnimate;},  /* 9: codigo a ejecutar si se interrumpe */
[], /* 10: Argumentos */
6,  /* 11: Duracion */
0,  /* 12: prioridad */
true,  /* 13: Eliminar al terminar */
false  /* 14: Mostrar si inconsciente */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];

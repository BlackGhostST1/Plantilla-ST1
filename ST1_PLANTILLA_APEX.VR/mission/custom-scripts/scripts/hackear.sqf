//Define Terminal // Define el objeto Terminal
_terminal = _this select 0;

//Add Hold Action // Añade el Hold Action
[
_terminal,              /* 0: Objetivo */
"Hackear Dispositivo", 		      /* 1: Titulo */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 2: idleIcon */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: Condicion para mostrar acción */
"_caller distance _target < 3",/* 5: codeProgress */
{},                       /* 6: codigo a ejecutar en el inicio */
{},                       /* 7: codigo al finalizar */
{HackCompleted=true;publicvariable "HackCompleted";[(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove",[0,-2] select isDedicated,true];},    /* 8: codeCompleted */
{},                        /* 9: codigo si se interrumpe */
[],                        /* 10: Argumentos */
10,                        /* 11: Duracion */
0,                        /* 12: prioridad */
true,                    /* 13: Eliminar al terminar */
false                    /* 14: mostrar si inconsciente*/
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];

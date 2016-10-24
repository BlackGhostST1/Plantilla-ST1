// Set AI Hostage Script
// By Galactic Twinkles
// Define Captive
//Definimos la unidad como captiva (rehen)
_captive = _this select 0;
// Select random animation
// Seleccionamos una animación aleoatoria
_anim = selectRandom ["Acts_AidlPsitMstpSsurWnonDnon01","Acts_AidlPsitMstpSsurWnonDnon02","Acts_AidlPsitMstpSsurWnonDnon03","Acts_AidlPsitMstpSsurWnonDnon04","Acts_AidlPsitMstpSsurWnonDnon05","Acts_ExecutionVictim_Loop"];

// Set Captive Settings
//Hacemos la condición de captive como true
_captive setCaptive true;
// Remove Items
//Eliminamos todo el equipamiento de la unidad
removeAllWeapons _captive;
removeBackpack _captive;
removeVest _captive;
removeAllAssignedItems _captive;
removeHeadgear _captive;

_captive switchMove _anim; // SwitchMove to random animation // hacemos que la unidad cambie de animación
// Set unit as hurt if it's the Execution animation
//Le asignamos un valor de daño a la unidad si la animación es la de Ejecución
if (_anim == "Acts_ExecutionVictim_Loop") then {
	_captive setDamage .5;
};
_captive disableAI "MOVE"; // Disable AI Movement // Desactivamos el movimiento
_captive disableAI "AUTOTARGET"; // Disable AI Autotarget // Desactivamos el apuntado
_captive disableAI "ANIM"; // Disable AI Behavioural Scripts // Desactivamos las animaciones predefinidas
_captive allowFleeing 0; // Disable AI Fleeing // Desactivamos que la unidad pueda huir
_captive setBehaviour "Careless"; // Set Behaviour to Careless because, you know, ARMA AI. // Ponemos el comportamiento de la IA en Descuidado

// Add Hold Action to Free Hostage
//Añadimos un Hold Action para liberar el rehén.
[
/* 0 Objeto */				        _captive,
/* 1 título de la acción */				"Free Hostage",
/* 2 icono en espera */				"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
/* 3 icono en progreso */				"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
/* 4 condicion para mostrar acción */			"_this distance _target < 3",
/* 5 condicion para la acción */			"true",
/* 6 code executed on start */			{},
/* 7 code executed per tick */			{},
/* 8 codigo a ejecutar al finalizar */      	{
						        if (_this select 3 select 0 == "Acts_ExecutionVictim_Loop") then {
								_this select 0 playMove "Acts_ExecutionVictim_Unbow";
							} else {
								_this select 0 switchMove "Acts_AidlPsitMstpSsurWnonDnon_out";
							};
							_complMessage = selectRandom ["Pensaba que iba a morir aquí...","Os lo agradezco.","Creo que me he cagado encima.","Sacadme de aquí de una vez.","Joder ¿Por qué habéis tardado tanto?","Rápido, vámonos."];
							["Hostage", _complMessage] remoteExec ["BIS_fnc_showSubtitle"];
							sleep 5.5;
							(_this select 0) enableAI "MOVE";
							(_this select 0) enableAI "AUTOTARGET";
							(_this select 0) enableAI "ANIM";
							(_this select 0) setBehaviour "SAFE";
							[(_this select 0)] joinSilent player;
							[(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove",[0,-2] select isDedicated,true];
							RescueCompleted = true; publicvariable "RescueCompleted";
						},
/* 9 codigo ejecutado si se interrumpe la acción */       {
						_intrMessage = selectRandom ["¡No me dejéis aquí!","¡Eh, no te vayas!","¡Me matarán si me dejas aquí!","Joder, joder, joder..."];
						["Hostage", _intrMessage] remoteExec ["BIS_fnc_showSubtitle"];
					    },
/* 10 argumentos */			    [_anim],
/* 11 diración de la accion en segundos */		    3,
/* 12 prioridad */			    0,
/* 13 eliminar acción una vez completada */		    true,
/* 14 mostrar si inconsciente */		    false
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];

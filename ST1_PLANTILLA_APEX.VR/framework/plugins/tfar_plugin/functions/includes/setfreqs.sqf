if (!hasinterface) exitWith {};

0 spawn {

	waitUntil {time > 10}; // Let TFAR init properly

	_unit = [str(player),"_"] call BIS_fnc_splitstring;
    _i = parseNumber (_unit select 1);

	_ST1_Subgroup = parseNumber (_unit select 2);
	_ST1_Preset = [ST1freqs select _i, []] select (_i < 0);

	if (_ST1_Subgroup == 0) then {
		ST1_TFAR_SW_freq = _ST1_Preset select 1;
		ST1_TFAR_LR_freq = _ST1_Preset select 0;
	} else {
		ST1_TFAR_SW_freq = (_ST1_Preset select 1) + _ST1_Subgroup;
		ST1_TFAR_LR_freq = _ST1_Preset select 1;
	};

	_ST1_TFAR_SW_radio = call TFAR_fnc_haveSWRadio;
	_ST1_TFAR_LR_radio = call TFAR_fnc_haveLRRadio;

	if (_ST1_TFAR_SW_radio) then {[(call TFAR_fnc_activeSwRadio), 1, str ST1_TFAR_SW_freq] call TFAR_fnc_SetChannelFrequency};
	if (_ST1_TFAR_LR_radio) then {[(call TFAR_fnc_activeLrRadio), 1, str ST1_TFAR_LR_freq] call TFAR_fnc_SetChannelFrequency};

	if (!_ST1_TFAR_LR_radio && _ST1_TFAR_SW_radio) then {
		systemChat format ["ST1: %1, tu frecuencia predeterminada de radio corta es: %2",name player,ST1_TFAR_SW_freq];
	};

	if (_ST1_TFAR_LR_radio && !_ST1_TFAR_SW_radio) then {
	systemChat format ["ST1: %1, tu frecuencia predeterminada de radio larga es: %2",name player,ST1_TFAR_LR_freq];
	};

	if (_ST1_TFAR_LR_radio && _ST1_TFAR_SW_radio) then {
	systemChat format ["ST1: %1, tus frecuencias de radio son: Corta: %2 | Larga: %3",name player,ST1_TFAR_SW_freq,ST1_TFAR_LR_freq];
	};

	if (!_ST1_TFAR_LR_radio && !_ST1_TFAR_SW_radio) then {
	systemChat format ["ST1: %1, No llevas radios. No se te ha asignado ninguna frecuencia.",name player];
	};

};

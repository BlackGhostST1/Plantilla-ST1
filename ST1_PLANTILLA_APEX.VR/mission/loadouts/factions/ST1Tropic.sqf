
// INFO ========================================================================
/*

    The United States Army (USA), officially designated as the "Army of the United States" is the largest branch of the
	United States Armed Forces with the primary task of performing land-based military operations in armed conflict and
	peacetime operations.

*/

_defaultSide = WEST;
_defaultVoice = [_voiceAMERICAN];
_defaultFace = [_faceWHITE, _faceBLACK];
_defaultName = [_nameAMERICAN];
_defaultInsignia = "ST1";

// CAMO ========================================================================
/*
	"ucp"
	"ocp"
*/

_camo = "WDL";

// WEAPONS =====================================================================

_commonRIFLE = _RHSHK416;
_commonRIFLEGL = _RHSHK416GL;
_commonPISTOL = _M9;
_commonSMG = _SMG;
_commonMG = _M249L;
_commonMARKSMAN = _SIG556K;
_commonSNIPER = _M200;
_commonAT = _AT4;
_specAT = _TitanAT;
_specAA = _TitanAA;
_commonSMG = _Vermin;
_commonRCO = "rhsusf_acc_ACOG3";
_commonCCO = "rhsusf_acc_compm4";
_commonMAGNIFIED = "ACE_optic_LRPS_2D";
_marksmanMAGNIFIED = "optic_AMS_khk";
_commonSUPPRESSOR = "rhsusf_acc_nt4_black";
_marksmanSUPPRESSOR = "muzzle_snds_B_khk_F";
_sniperSUPPRESSOR = "muzzle_snds_338_black";
_commonBIPOD = "bipod_01_F_blk";
_commonPISTOLSUPPRESSOR = "muzzle_snds_L";
_commonLASER = "rhsusf_acc_anpeq15side_bk";
_NVG = "rhsusf_ANPVS_15";

_reconMARKSMAN = _commonMARKSMAN;
_reconMAGNIFIED = _marksmanMAGNIFIED;
_reconSUPPRESSOR = _marksmanSUPPRESSOR;

// AMMO COUNT ==================================================================

_countRIFLE = 6;
_countRIFLELOW = 5;
_countRIFLET = 3;
_countMARKSMAN = 8;
_countPISTOL = 2;
_countSMG = 6;
_countMG = 2;
_countSNIPER = 5;
_countAT = 3;
_countGRENADES = 4;
_count40mm = 8;

_countRifleCARGO = 30;
_countPistolCARGO = 10;
_countMgCARGO = 20;
_countSniperCARGO = 30;
_countATCARGO = 15;
_countGrenadesCARGO = 20;
_count40mmCARGO = 40;

// MEDICAL SUPPLIES ============================================================

_countTOURNIQUET = 14;
_countBANDAGE = 20;
_countMORPHINE = 12;
_countEPI = 6;
_countSALINE = 6;
_countSALINE500 = 4;

_countBandageCARGO = 40;
_countMorphineCARGO = 30;
_countEpiCARGO = 20;
_countBloodbagCARGO = 10;

_suppliesMEDIC = [[_unit,[_tourniquet, _countTOURNIQUET], [_packingBandage,_countBANDAGE], [_elasticbandage, _countBANDAGE], [_fieldDressing, _countBANDAGE], [_quickClot, _countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_saline250,_countSALINE], [_saline500,_countSALINE500], [_personalAidKit,1]]];
_suppliesNORMAL = [[_unit,[_tourniquet, 2], [_elasticbandage, 6], [_fieldDressing, 4], [_quickClot,7], [_packingBandage, 4], [_morphine,2], [_saline250, 2]]];


// UNIFORMS ====================================================================

_headsLIST = [
    "H_HelmetB_tna_F",
    "H_HelmetB_Enh_tna_F",
    "H_HelmetB_Light_tna_F"
];

_uniformLIST = [
    "U_B_T_Soldier_F",
    "U_B_T_Soldier_AR_F"
];

_vestsLIST = [
//  "ST1_"+_camo+"_Plate_Carrier2",
//  "ST1_"+_camo+"_Plate_Carrier_H2",
    "V_PlateCarrier1_tna_F",
    "V_PlateCarrier2_tna_F"
];

_goggleLIST = [
    "rhs_googles_clear",
	"G_Combat",
	"G_Aviator",
	"rhs_googles_black"
];

_reconheadsLIST = [
	"H_Watchcap_blk",
	"H_Watchcap_khk",
	"ST1_"+_camo+"_booniehat",
	"ST1_"+_camo+"_cap",
	"rhsusf_Bowman",
	"H_Bandanna_khk_hs"
];

_randomHEAD = _headsLIST call BIS_fnc_selectRandom;
_randomVEST = _vestsLIST call BIS_fnc_selectRandom;
_randomGOGGLE = _goggleLIST call BIS_fnc_selectRandom;
_randomUNIFORM = _uniformLIST call BIS_fnc_selectRandom;
_randomReconHEAD = _reconheadsLIST call BIS_fnc_selectRandom;

_commonHEAD = _randomHEAD;
_leaderHEAD = _commonHEAD;
_officerHEAD = "ST1_Beret";
_medicHEAD = _commonHEAD;
_crewmanHEAD = "rhsusf_cvc_green_ess";
_pilotHEAD = "ST1_Pilot_Helmet";
_helicrewHEAD = "ST1_HeliPilot_Helmet";
_helipilotHEAD = "ST1_HeliPilot_Helmet";
_sniperHEAD = _commonHEAD;
_demoHEAD = _commonHEAD;
_reconleaderHEAD = _commonHEAD;
_reconHEAD = _commonHEAD;

_commonUNIFORM = _randomUNIFORM;
_officerUNIFORM = _randomUNIFORM;
_pilotUNIFORM = "ST1_Pilot_Uniform";

_sniperUNIFORM = "U_B_GhillieSuit";
_marksmanUNIFORM = _randomUNIFORM;
_helicrewUNIFORM = "ST1_HeliPilot_Uniform";
_crewUNIFORM = _commonUNIFORM;
_mgUNIFORM = _randomUNIFORM;
_medicUNIFORM = _randomUNIFORM;
_demoUNIFORM = _randomUNIFORM;
_reconUNIFORM = _randomUNIFORM;

_commonVEST = _randomVEST;
_officerVEST = _randomVEST;
_ftlVEST = _randomVEST;
_slVEST = _randomVEST;
_mgVEST = _randomVEST;
_grenadierVEST = _randomVEST;
_medicVEST = _randomVEST;
_demoVEST = _randomVEST;
_marksmanVEST = _randomVEST;
_reconVEST = _randomVEST;
_pilotVEST = "V_BandollierB_oli";
_helipilotVEST = "ST1_PMC_TacticalVest";

_commonBACKPACK = "B_AssaultPack_tna_F";
_bigBACKPACK = "B_Carryall_oli";
_medBACKPACK = "B_Kitbag_sgg";

_unit addGoggles _randomGOGGLE;

_HMG = "RHS_M2_Gun_Bag";
_tripod = "RHS_M2_Tripod_Bag";

if (isPlayer _unit) then {
	player_DLC = _unit getVariable ["unit_DLC", false];
	if (player_DLC) then {
		_sniperUniform = "U_B_FullGhillie_sard";
		_reconMARKSMAN = _MAR10;
		_reconMAGNIFIED = "optic_AMS";
		_reconSUPPRESSOR = "muzzle_snds_338_black";
	};
};

// =============================================================================
if (!_isMan) exitWith {};
switch (true) do {
// =============================================================================

    case (_isOfficer): {
        [_officerHEAD, _officerUNIFORM, _officerVEST, "empty"] call _useUniform;
		["BP"] call _addRadio;
        [[_unit,[_wsmoke,2],[_bsmoke,2],[_gsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [_30rnd556STANAGT,_countRIFLET] call _addAmmo;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
    };

    case (_isSquadLeader): {
        [_leaderHEAD, _commonUNIFORM, _slVEST, "empty"] call _useUniform;
		["BP"] call _addRadio;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
        ["rangefinder"] call _addOptics;
    };

    case (_isTeamLeader): {
        [_leaderHEAD, _commonUNIFORM, _ftlVEST, "empty"] call _useUniform;
        ["BP"] call _addRadio;
        [[_unit,[_bsmoke,2],[_gsmoke,2],[_grenade,2],[_huntIRMonitor,1]]] call _addtoVest;
		[_commonRIFLEGL, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
		["primary", _commonRCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
		[[_unit,[(_commonRIFLEGL select 3),_countRIFLET],[(_commonRIFLEGL select 2),_count40mm],[_40mmSwhite,6],[_40mmSred,6],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1],[_huntIR,1]]] call _addtoBackpack;
        ["laserdesignator"] call _addOptics;
    };

    case (_isReconLeader): {
        [_reconleaderHEAD, _reconUNIFORM, _reconVEST, "empty"] call _useUniform;
		["BPR"] call _addRadio;
        [[_unit,[_bsmoke,2],[_gsmoke,2],[_grenade,2],[_IRStrobe,1],[_CableTie,1],[(_commonRIFLE select 2),_countRIFLET],[_gchemlight,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["primary", _commonRCO] call _attachToWeapon;
		["secondary", _commonPISTOLSUPPRESSOR] call _attachToWeapon;
		["laserdesignator"] call _addOptics;
    };

    case (_isRTO): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
		["BP"] call _addRadio;
        [[_unit,[_wsmoke,2], [_grenade,_countGRENADES]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
    };

    case (_isRifleman): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _commonBackpack] call _useUniform;
        [[_unit,[_wsmoke,6],[_gsmoke,2],[_grenade,_countGRENADES]]] call _addtoVest;
		[[_unit,[(_commonRIFLE select 2),3],[_wsmoke,4],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
    };

    case (_isDemo): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBACKPACK] call _useUniform;
        [[_unit, [_clacker,1],[_mineDetector,1],[_defusalKit,1]]] call _addtoUniform;
        [[_unit,[_apMINE,2],[_apBoundingMINE,2]]] call _addtoVest;
        [[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isRiflemanAT): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _commonBackpack] call _useUniform;
        [[_unit,[_wsmoke,6],[_gsmoke,2],[_grenade,2]]] call _addtoVest;
        [[_unit,[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [_commonAT, 1] call _addWeaponKit;
    };

    case (_isMarksman): {
        [_commonHEAD, _marksmanUNIFORM, _marksmanVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2], [_rsmoke,2]]] call _addtoVest;
        [_commonMARKSMAN, _countRIFLE] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
    };

    case (_isAutorifleman): {
        [_commonHEAD, _mgUNIFORM, _mgVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,2],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoVest;
        [_commonMG, _countMG] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [(_commonMG select 2),2] call _addAmmo;
    };

    case (_isAutoriflemanAsst): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _BigBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_grenade,2]]] call _addtoVest;
        [[_unit,[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1],[_spareBarrel,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [(_commonMG select 2),4] call _addAmmo;
    };

    case (_isGrenadier): {
        [_commonHEAD, _commonUNIFORM, _grenadierVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [[_unit,[_commonRIFLEGL select 2, _count40mm]]] call _addtoBackpack;
        [_commonRIFLEGL, _countRIFLE] call _addWeaponKit;
    };

    case (_isLifeSaver): {
        [_medicHEAD, _medicUNIFORM, _medicVEST, _medBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,6], [_gsmoke,6]]] call _addtoVest;
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
		["primary", _commonCCO] call _attachToWeapon;
        _defaultInsignia = "Medico";
    };

    case (_isMMG): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _HMG] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };

    case (_isMMGTripod): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _tripod] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };

    case (_isReconMarksman): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _commonBACKPACK] call _useUniform;
        ["rangefinder"] call _addOptics;
        [[_unit,[_rchemlight,2],[_bchemlight,2],[_wflare,2],[_kestrel,1],[_tragMX,1],[_rangeCard,1]]] call _addtoVest;
        [_reconMARKSMAN, _countMARKSMAN] call _addWeaponKit;
		[_commonPISTOL, _countPISTOL] call _addWeaponKit;
		[[_unit,[_wsmoke,2],[_grenade,2]]] call _addtoBackpack;
        ["primary", _reconSUPPRESSOR] call _attachToWeapon;
		["primary", _reconMAGNIFIED] call _attachToWeapon;
		["primary", _commonBIPOD] call _attachToWeapon;
		["primary", _commonLASER] call _attachToWeapon;

    };

	case (_isRecon): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _commonBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_rchemlight,2],[_bchemlight,2],[_wflare,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
		[[_unit,[(_commonRIFLE select 1),9],[(_commonRIFLE select 2),3],[_wsmoke,2],[_grenade,2]]] call _addtoBackpack;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
		["primary", _commonRCO] call _attachToWeapon;

    };

	case (_isReconLeader): {
        [_reconleaderHEAD, _reconUNIFORM, _reconVEST, "empty"] call _useUniform;
		["BPR"] call _addRadio;
        [[_unit,[_bsmoke,2],[_gsmoke,2],[_grenade,2],[_IRStrobe,1],[_CableTie,1],[(_commonRIFLE select 2),_countRIFLET],[_gchemlight,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["primary", _commonRCO] call _attachToWeapon;
		["secondary", _commonPISTOLSUPPRESSOR] call _attachToWeapon;
		["laserdesignator"] call _addOptics;
    };

    case (_isReconMedic): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _medBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[(_commonRIFLE select 2),_countRIFLET]]] call _addtoVest;
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
		["primary", _commonRCO] call _attachToWeapon;
        _defaultInsignia = "Medico";
    };

    case (_isReconDemo): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _medBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2]]] call _addtoVest;
        [[_unit,[_C4,2],[_satchelCharge,2],[_deadManSwitch,1],[_clacker,1],[(_commonRIFLE select 2),_countRIFLET]]] call _addtoBackpack;
        [_commonRIFLEGL, _countRIFLE] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
		["primary", _commonRCO] call _attachToWeapon;
    };

	case (_isHeavyAT): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _medBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_grenade,2]]] call _addtoVest;
        [[_unit,[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [_specAT, 2] call _addWeaponKit;
    };

	case (_isATAssistant): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_grenade,2],[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoVest;
        [[_unit,[(_specAT select 1),3]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
    };

	case (_isAA): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _medBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_grenade,2]]] call _addtoVest;
        [[_unit,[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
        [_specAA, 2] call _addWeaponKit;
    };

	case (_isAAAssistant): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_grenade,2],[(_commonRIFLE select 2),3],[_gchemlight,2],[_IRStrobe,1],[_CableTie,1]]] call _addtoVest;
        [[_unit,[(_specAA select 1),3]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["primary", _commonLASER] call _attachToWeapon;
    };

    case (_isPilot): {
        [_pilotHEAD, _pilotUNIFORM, _pilotVEST, _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_gchemlight,2],[_IRStrobe,1],[_gFLARE,1]]] call _addtoVest;
        [_commonSMG, _countSMG] call _addWeaponKit;
        ["primary", "optic_Aco_smg"] call _attachToWeapon;
    };

    case (_isHelicopterCrew): {
        [_helipilotHEAD, _helicrewUNIFORM, _helipilotVEST, _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_gchemlight,2],[_IRStrobe,1],[_gFLARE,1]]] call _addtoVest;
        [_commonSMG, _countSMG] call _addWeaponKit;
        ["primary", "optic_Aco_smg"] call _attachToWeapon;
    };

    case (_isHelicopterPilot): {
        [_helipilotHEAD, _helicrewUNIFORM, _helipilotVEST, _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_gsmoke,2],[_gchemlight,2],[_IRStrobe,1],[_gFLARE,1]]] call _addtoVest;
        [_commonSMG, _countSMG] call _addWeaponKit;
        ["primary", "optic_Aco_smg"] call _attachToWeapon;
    };

    case (_isCrewman): {
        [_crewmanHEAD, _crewUNIFORM, "empty", "empty"] call _useUniform;
		if (_isLeader) then { ["BP"] call _addRadio };
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isSniper): {
        [_sniperHEAD, _sniperUNIFORM, "ST1_"+_camo+"_Plate_Carrier", "empty"] call _useUniform;
		if (_isLeader) then { ["BP"] call _addRadio };
        [[_unit,[_wsmoke,2],[_kestrel,1],[_tragMX,1],[_rangeCard,1]]] call _addtoVest;
        [_commonSNIPER, _countSNIPER] call _addWeaponKit;
        ["primary", _commonMAGNIFIED] call _attachToWeapon;
		["rangefinder"] call _addOptics;
    };

    case (_isSpotter): {
        [_sniperHEAD, _sniperUNIFORM, _commonVEST, _commonBACKPACK] call _useUniform;
		if (_isLeader) then { ["BP"] call _addRadio };
        [[_unit,[_gsmoke,2],[_40mmSwhite,2],[_40mmSred,2],[_kestrel,1],[_tragMX,1],[_rangeCard,1]]] call _addtoVest;
        [[_unit,[_commonSNIPER select 1, (_countSNIPER*2)]]] call _addtoBackpack;
        [_commonRIFLEGL, _countRIFLELOW] call _addWeaponKit;
		["primary", _commonRCO] call _attachToWeapon;
		["primary", _commonLASER] call _attachToWeapon;
		["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["laserdesignator"] call _addOptics;
    };

    default {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,3]]] call _addtoVest;
        [_commonRIFLE, 5] call _addWeaponKit;
    };
};

// ADDS ESSENTIALS =============================================================

_suppliesNORMAL call _addtoUniform;
[[_unit,[_mapTools,1],[_microDAGR,1],[_flashlight,1]]] call _addtoVest;

["ItemMap", "ItemCompass", "ItemWatch", _NVG] call _linkItem;

["LR"] call _addRadio;

//if (mission_ACE3_enabled) then { [[_unit, [_earBuds,1]]] call _addtoUniform };

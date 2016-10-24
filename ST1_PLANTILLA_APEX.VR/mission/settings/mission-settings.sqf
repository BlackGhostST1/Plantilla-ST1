mission_settings_loaded = false;

// ============================================================================
//                                                                             |
//    This is where you edit the mission values for your mission, have fun!    |
//                                                                             |
// ============================================================================

// ============================================================================
//                       == CREDITS AND VERSION ==                             |
//                                                                             |
//      Before we get started, write down the author name and the mission      |
//          version just so you can keep track of the credits easier!          |
//                                                                             |
// ============================================================================

mission_author_name = ["Proxen"];
mission_version =    "v1.0";
mission_init_time = 5;


// ============================================================================
//                          == MISSION GAMEMODE ==                             |
//                                                                             |
//                      What is the type of mission?                           |
//              "coop" - Cooperative missions, players against AI.             |
//         "tvt" - Team vs Team, each group of players fight each other.       |
//     "cotvt" - Same as a COOP, but with enemy players on the other side.     |
//                                                                             |
// ============================================================================

mission_game_mode = "coop";

// ============================================================================
//                          ==   LOADOUT MODE   ==                             |
//                                                                             |
//           Determines if players will get any loadouts at all.               |
//                                                                             |
// ============================================================================

units_player_useVanillaGear = false;
units_AI_useVanillaGear = false;

// ============================================================================
//                        == Información de los jugadores ==
//
//            Edita este valor con el bando al que pertenencen los jugadores
//                            Los valores validos son:
//
//                         west, east, resistance
//
//   los colores validos son: "blue","red","green","white","black" and "yellow".
//
// ============================================================================

side_a_side = west; // Side the players belong to // Bando al que pertenencen los jugadores
side_a_color = "blue";// Color of the player side. //Ccolor del bando del jugador
side_a_faction = "NATO";// Faction of the players. // Facción de los jugadores (esto define el loadout)
side_a_name = "Unidad ST1";// Player faction name. // Nombre de la facción del jugador
ST1freqs = [					  //Frecuencias TFAR para los grupos
  [31,    32],   //Mando
  [31,    33],   //Alpha
  [31,    36],   //Bravo
  [31,    39],   //Charlie
  [31,    42],   //Delta
  [31,    45],   //Recon
  [31,    46],   //Foxtrot
  [31,    47],   //Wilco
  [31,    48],   //Shocker
  [31,    49],   //Sierra
  [31,    50]  //Spartan
];

// Name the player groups. // Nombre de los grupos de los jugadores
side_a_callsigns = ["Mando", "Alpha", "Bravo", "Charlie", "Delta", "Razor", "Foxtrot", "Titan", "Lancer","Sierra", "Spartan"];

// =============================================================================

side_b_side = east;                 // Side the enemies belong to // Bando al que pertenecen los enemigos
side_b_color = "red";               // Color of the enemy side. // Color de la facción enemiga
side_b_faction = "CSATPACIFIC";            // Enemy faction. // Facción de los enemigos (esto define el loadout)
side_b_name = "CSAT";        // Enemy faction name. // Nombre de la facción enemiga

// Name the enemy groups. // Nombre de los grupos enemigos
side_b_callsigns = ["Godfather", "Anaconda", "Boa", "Cobra", "Dragon",  "Raven", "Scorpion", "Weasel", "Sparrow", "Pelican", "Moose", "Lion", "Tiger", "Hawk", "Phoenix"];

// =============================================================================

mission_enable_side_c = false;

// =============================================================================

side_c_side = resistance;           // Side of third faction. // Nombre del tercer bando
side_c_color = "green";             // Color of the third faction. // color de la tercera facción
side_c_faction = "AAF";             // Third side's faction. // Facción del tercer bando (esto define el loadout)
side_c_name = "AAF Units";          // Name of the third faction. // Nombre de la tercera facción

// Name the third faction's groups. // Nombre de los grupos del tercer bando
side_c_callsigns = ["Papa", "Anna", "Beatrice", "Clara", "Denise",  "Rose", "Sarah", "Whitney", "Shirley", "Penny", "Mary", "Lucy", "Tanya", "Helen", "Petunia"];

// =============================================================================

DAC_Res_Side = 1;                    // Side the independent are friendly to: // Bando del que los independientes son aliados
                                     // 0: EAST / 1: WEST / 2: NOBODY
                                     // (MUST BE THE SAME AS THE EDITOR!) // (debe ser el mismo que se haya puesto en el editor)

// ============================================================================
//                           ==   EXTRACTION   ==
//
//    Determines what sides will only win their mission after extracting to
//                      a designated point on the map.
//
// ============================================================================

// Sides that must extract after finishing their main objectives. // Los bandos deben ser extraidos despues de terminar los objetivos principales
//mission_require_extraction = [side_a_side];
mission_require_extraction = [side_a_side];

// Extraction objects for each side. Can be a Game Logic or regular vehicle/object. // Objeto para la extracción. Puede ser una Lógica de Juego o un objeto o vehiculo normal.

mission_extraction_points_a = [blu_extraction_1];
mission_extraction_points_b = [];
mission_extraction_points_c = [];

// Enables music playing during the extraction - a random one will be chosen. // Activa música durante la extracción - Una aleatoria se escoge
mission_extraction_enable_music = true;

mission_extraction_tracks =
["LeadTrack01_F", "LeadTrack02_F", "LeadTrack03_F", "LeadTrack01_F_Heli",
"LeadTrack01_F_Mark", "LeadTrack05_F", "LeadTrack02_F_EPB"];

// Declare here the groups that must extract. // Define los grupos que se deben extraer

mission_extraction_BLU = ["blu_1_0","blu_2_0"];
mission_extraction_OP = ["op_0_0","op_1_0","op_1_1","op_1_2","op_2_0","op_2_1","op_2_2","op_3_0","op_3_1","op_3_2","op_4_0","op_4_1","op_4_2"];
mission_extraction_IND = ["ind_0_0","ind_1_0","ind_1_1","ind_1_2","ind_2_0","ind_2_1","ind_2_2","ind_3_0","ind_3_1","ind_3_2","ind_4_0","ind_4_1","ind_4_2"];
mission_extraction_CIV = ["civ_0_0"];

// ============================================================================
//                              == ENDINGS ==                                  |
//                                                                             |
//        These are the endings that are called when conditions are met.       |
//                                                                             |
//         Some can be ignored if you aren't using the related plugin.         |
//                                                                             |
// ============================================================================

endings_victory = "victory";                    // (COOP) Objectives completed.
endings_defeat = "defeat";                      // (COOP) Critical objective failed.

endings_civilians_killed = "defeat";            // (COOP) Max number of civies killed.
endings_time_over = "defeat";                   // (COOP) Time limit reached.

endings_tvt_auto = "tvt_end";                   // (TVT) Maximum casualties reached - default TVT ending!

endings_tvt_side_a_victory = "side_a_victory";  // (TVT) Side A wins the mission.
endings_tvt_side_b_victory = "side_b_victory";  // (TVT) Side B wins the mission.
endings_tvt_side_c_victory = "side_c_victory";  // (TVT) Side C wins the mission.

endings_tvt_side_a_defeat = "side_a_defeat";    // (TVT) Side A wins the mission.
endings_tvt_side_b_defeat = "side_a_defeat";    // (TVT) Side B wins the mission.
endings_tvt_side_c_defeat = "side_a_defeat";    // (TVT) Side C wins the mission.

// ============================================================================

// ============================================================================
//                           == ALLOW JIP ==
//
//      If this value is set to false, JIPs will be removed upon joining.
//     Si el valor es false, JIP será eliminado después de entrar. (no habrá JIP)    
//
// ============================================================================

mission_allow_jip = true;

// =============================================================================
//  Load the ACE3 settings file.
// =============================================================================
//#include "mods-settings\ace3-settings.sqf"

// =============================================================================
//  Load the TFAR settings file. // Carga el archivo de configuración del TFAR
// =============================================================================
#include "mods-settings\tfar-settings.sqf"

// =============================================================================
//  Load the ACRE2 settings file.
// =============================================================================
//#include "mods-settings\acre2-settings.sqf"

// =============================================================================
//  Load the Framework plugins settings file. // Carga el archivo de configuración de plugins del Framework
// =============================================================================
#include "plugin-settings.sqf"

{_x = nil} forEach mission_extraction_points_a;
{_x = nil} forEach mission_extraction_points_b;
{_x = nil} forEach mission_extraction_points_c;

// =============================================================================
mission_settings_loaded = true;

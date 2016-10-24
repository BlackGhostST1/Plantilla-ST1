
// ============================================================================
//
// Aqui es donde se configuran los parámetros de los plugins que vamos a utilizar en la mision
//
// ============================================================================

// ============================================================================
//                          == INTRO CUTSCENE ==                               |
//                                                                             |
//  Válidos: "ESTABLISHING", "TEXT", "CINEMA", "CUSTOM", "QUOTE", "APEX"    |
//                               and "NONE".                                   |
// ============================================================================

intro_cutscene = "APEX";

// ============================================================================
//                             == T8 UNITS ==                               |
// ============================================================================
// DEBUG Settings

if (!isMultiplayer) then {T8U_var_DEBUG = true;} else {T8U_var_DEBUG = false;};

#include "t8_settings.hpp"

// ============================================================================
//                       == F2's BODY REMOVAL ==
//
//                    Elimina los cuerpos de unidades muertas
// ============================================================================

// How long until the bodies are removed. // Cuanto esperar para eliminar los cadaveres
f_var_removeBodyDelay = 120;

// How far do they have to be from a player. // Cuanta distancia desde el jugador para eliminarlos
f_var_removeBodyDistance = 300;

// ============================================================================
//                       == F2's CASUALTY CAP ==
//
//        Detecta cuando un porcentaje de un/unos grupo/s seleccionado está muerto
//        http://ferstaberinde.com/f2/en/index.php?title=Casualties_Cap
// ============================================================================

casualty_group_BLU = "[blu_0_0, blu_1_0, blu_1_1, blu_1_2, blu_2_0, blu_2_1, blu_2_2, blu_3_0, blu_3_1, blu_3_2, blu_4_0, blu_4_1, blu_4_2]";
// Casualty groups for BLUFOR.
// Cuenta bajas par los siguientes grupos BLUFOR

casualty_group_OP = "[op_0_0, op_1_0, op_1_1, op_1_2, op_2_0, op_2_1, op_2_2, op_3_0, op_3_1, op_3_2, op_4_0, op_4_1, op_4_2]";
// Casualty group for OPFOR.
// Cuenta bajas par los siguientes grupos OPFOR

casualty_group_IND = "[ind_0_0, ind_1_0, ind_1_1, ind_1_2, ind_2_0, ind_2_1, ind_2_2, ind_3_0, ind_3_1, ind_3_2, ind_4_0, ind_4_1, ind_4_2]";
// Casualty group for INDFOR.
// Cuenta bajas par los siguientes grupos INDFOR

// ============================================================================
//                              == TIME LIMIT ==
//
//      Este parámetro decide cuándo los jugadores tendrán un recordatorio
//              de cuanto tiempo les queda todavia en la mision
// ============================================================================

time_alerted_minutes = [120, 60, 15, 1];

// ============================================================================
//                            == CIVILIAN CAP ==
//
//    Los bandos incluidos aqui serán responsables de las bajas de civiles
//                  si los parámetros para esto están activados.
// ============================================================================

responsible_sides = [side_a_side, side_b_side];

// ============================================================================
//        This is a list with all playable units, for DAC to use:
//                     add or remove as necessary.
///       Lista con todas las unidades jugables para que el DAC las use:
//                    Añadir o eliminar como sea necesario
//
//                 No modificar si no es necesario.                 
// ============================================================================
DAC_STRPlayers = [
//                     ==== BLUFOR 1st PLATOON ====

                  "blu_0_0_1", "blu_0_0_2", "blu_0_0_3",

                        "blu_1_0_1", "blu_1_0_2",
                        "blu_1_1_1", "blu_1_1_2",
                        "blu_1_1_3", "blu_1_1_4",
                        "blu_1_2_1", "blu_1_2_2",
                        "blu_1_2_3", "blu_1_2_4",

                        "blu_2_0_1", "blu_2_0_2",
                        "blu_2_1_1", "blu_2_1_2",
                        "blu_2_1_3", "blu_2_1_4",
                        "blu_2_2_1", "blu_2_2_2",
                        "blu_2_2_3", "blu_2_2_4",

                        "blu_3_0_1", "blu_3_0_2",
                        "blu_3_1_1", "blu_3_1_2",
                        "blu_3_1_3", "blu_3_1_4",
                        "blu_3_2_1", "blu_3_2_2",
                        "blu_3_2_3", "blu_3_2_4",

                        "blu_4_0_1", "blu_4_0_2",
                        "blu_4_1_1", "blu_4_1_2",
                        "blu_4_1_3", "blu_4_1_4",
                        "blu_4_2_1", "blu_4_2_2",
                        "blu_4_2_3", "blu_4_2_4",

                        "blu_5_0_1","blu_5_0_2",
                        "blu_5_0_3","blu_5_0_4",

                        "blu_6_0_1","blu_6_0_2",
                        "blu_6_0_3","blu_6_0_4",

                        "blu_7_0_1","blu_7_0_2",
                        "blu_7_0_3","blu_7_0_4",

                        "blu_8_0_1","blu_8_0_2",
                        "blu_8_0_3",

                        "blu_9_0_1","blu_9_0_2",

                        "blu_10_1_1","blu_10_1_2",
                        "blu11_1_1","blu_11_1_2",
                        "blu_11_1_3",

                        "blu_12_1_1","blu_12_1_2",
                        "blu_12_1_3","blu_12_1_4",

                        "blu_13_1_1","blu_13_1_2",
                        "blu_13_1_3","blu_13_1_4",
                        "blu_13_1_5",

                        "blu_14_2_1","blu_14_2_2",

                        "blu_14_2_1","blu_14_2_2",

// =============================================================================

// =============================================================================

//                        ==== OPFOR 1st PLATOON ====

                     "op_0_0_1", "op_0_0_2", "op_0_0_3",

                            "op_1_0_1", "op_1_0_2",
                            "op_1_1_1", "op_1_1_2",
                            "op_1_1_3", "op_1_1_4",
                            "op_1_2_1", "op_1_2_2",
                            "op_1_2_3", "op_1_2_4",

                            "op_2_0_1", "op_2_0_2",
                            "op_2_1_1", "op_2_1_2",
                            "op_2_1_3", "op_2_1_4",
                            "op_2_2_1", "op_2_2_2",
                            "op_2_2_3", "op_2_2_4",

                            "op_3_0_1", "op_3_0_2",
                            "op_3_1_1", "op_3_1_2",
                            "op_3_1_3", "op_3_1_4",
                            "op_3_2_1", "op_3_2_2",
                            "op_3_2_3", "op_3_2_4",

                            "op_4_0_1", "op_4_0_2",
                            "op_4_1_1", "op_4_1_2",
                            "op_4_1_3", "op_4_1_4",
                            "op_4_2_1", "op_4_2_2",
                            "op_4_2_3", "op_4_2_4",

                            "op_5_0_1","op_5_0_2",
                            "op_5_0_3","op_5_0_4",

                            "op_6_0_1","op_6_0_2",
                            "op_6_0_3","op_6_0_4",

                            "op_7_0_1","op_7_0_2",
                            "op_7_0_3","op_7_0_4",

                            "op_8_0_1","op_8_0_2",
                            "op_8_0_3",

                            "op_9_0_1","op_9_0_2",

                            "op_10_1_1","op_10_1_2",
                            "op11_1_1","op_11_1_2",
                            "op_11_1_3",

                            "op_12_1_1","op_12_1_2",
                            "op_12_1_3","op_12_1_4",

                            "op_13_1_1","op_13_1_2",
                            "op_13_1_3","op_13_1_4",
                            "op_13_1_5",

                            "op_14_2_1","op_14_2_2",

                            "op_14_2_1","op_14_2_2",

// =============================================================================

// =============================================================================

//                      ==== INDEPENDENT 1st PLATOON ====

                     "ind_0_0_1", "ind_0_0_2", "ind_0_0_3",

                            "ind_1_0_1", "ind_1_0_2",
                            "ind_1_1_1", "ind_1_1_2",
                            "ind_1_1_3", "ind_1_1_4",
                            "ind_1_2_1", "ind_1_2_2",
                            "ind_1_2_3", "ind_1_2_4",

                            "ind_2_0_1", "ind_2_0_2",
                            "ind_2_1_1", "ind_2_1_2",
                            "ind_2_1_3", "ind_2_1_4",
                            "ind_2_2_1", "ind_2_2_2",
                            "ind_2_2_3", "ind_2_2_4",

                            "ind_3_0_1", "ind_3_0_2",
                            "ind_3_1_1", "ind_3_1_2",
                            "ind_3_1_3", "ind_3_1_4",
                            "ind_3_2_1", "ind_3_2_2",
                            "ind_3_2_3", "ind_3_2_4",

                            "ind_4_0_1", "ind_4_0_2",
                            "ind_4_1_1", "ind_4_1_2",
                            "ind_4_1_3", "ind_4_1_4",
                            "ind_4_2_1", "ind_4_2_2",
                            "ind_4_2_3", "ind_4_2_4",

                            "ind_5_0_1","ind_5_0_2",
                            "ind_5_0_3","ind_5_0_4",

                            "ind_6_0_1","ind_6_0_2",
                            "ind_6_0_3","ind_6_0_4",

                            "ind_7_0_1","ind_7_0_2",
                            "ind_7_0_3","ind_7_0_4",

                            "ind_8_0_1","ind_8_0_2",
                            "ind_8_0_3",

                            "ind_9_0_1","ind_9_0_2",

                            "ind_10_1_1","ind_10_1_2",
                            "ind11_1_1","ind_11_1_2",
                            "ind_11_1_3",

                            "ind_12_1_1","ind_12_1_2",
                            "ind_12_1_3","ind_12_1_4",

                            "ind_13_1_1","ind_13_1_2",
                            "ind_13_1_3","ind_13_1_4",
                            "ind_13_1_5",

                            "ind_14_2_1","ind_14_2_2",

                            "ind_14_2_1","ind_14_2_2",

                            "civ_0_0_1","civ_0_0_2"

// =============================================================================
];

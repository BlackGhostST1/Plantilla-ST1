
    //=========================================================================
    class bar03 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================

    class bar_time {

    title = "TIME AND MISSION CONSTRAINTS =======================";

    values[] = {0}; texts[] = {""}; default = 0; };

    //=========================================================================
    class bar06 { title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================

// ============================================================================
//   Includes Plugin parameters pertaining to Time and Constraints.            |
// ============================================================================
    #define BRM_PARAMS_TIME
        #include "framework\plugins\plugins.cpp"
    #undef BRM_PARAMS_TIME

    //=========================================================================
    class bar07 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================
    class bar_player {

    title = "PLAYER SETTINGS =======================";

    values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================
    class bar08 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================

// ============================================================================
//   Includes Plugin parameters pertaining to Players.                         |
// ============================================================================
    #define BRM_PARAMS_PLAYER
        #include "framework\plugins\plugins.cpp"
    #undef BRM_PARAMS_PLAYER

    //=========================================================================
    class bar09 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================
    class bar_ai {

    title = "AI SETTINGS ========================";

    values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================
    class bar10 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================

// ============================================================================
//   Includes Plugin parameters pertaining to AI.                              |
// ============================================================================
    #define BRM_PARAMS_AI
        #include "framework\plugins\plugins.cpp"
    #undef BRM_PARAMS_AI

// ============================================================================

    //=========================================================================
    class bar11 {title = ""; values[] = {0}; texts[] = {""}; default = 0; };
    //=========================================================================
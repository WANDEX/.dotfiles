static const char norm_fg[] = "#dac7cd";
static const char norm_bg[] = "#0c090b";
static const char norm_border[] = "#988b8f";

static const char sel_fg[] = "#dac7cd";
static const char sel_bg[] = "#C36979";
static const char sel_border[] = "#dac7cd";

static const char urg_fg[] = "#dac7cd";
static const char urg_bg[] = "#925D6F";
static const char urg_border[] = "#925D6F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};

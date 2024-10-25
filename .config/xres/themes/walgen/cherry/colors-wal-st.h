const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0c090b", /* black   */
  [1] = "#925D6F", /* red     */
  [2] = "#C36979", /* green   */
  [3] = "#787188", /* yellow  */
  [4] = "#9B768B", /* blue    */
  [5] = "#C47B8A", /* magenta */
  [6] = "#A891A3", /* cyan    */
  [7] = "#dac7cd", /* white   */

  /* 8 bright colors */
  [8]  = "#988b8f",  /* black   */
  [9]  = "#925D6F",  /* red     */
  [10] = "#C36979", /* green   */
  [11] = "#787188", /* yellow  */
  [12] = "#9B768B", /* blue    */
  [13] = "#C47B8A", /* magenta */
  [14] = "#A891A3", /* cyan    */
  [15] = "#dac7cd", /* white   */

  /* special colors */
  [256] = "#0c090b", /* background */
  [257] = "#dac7cd", /* foreground */
  [258] = "#dac7cd",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

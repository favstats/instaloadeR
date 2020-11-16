
#' init_instaloadeR
#'
#' @description Initializes the instaloader python functions. Only works when \code{install_instaloadeR()} has ben executed.
#' @export
init_instaloadeR <- function(){

  reticulate::source_python("https://raw.githubusercontent.com/favstats/instaloadeR/master/script.py")

  message("instaloader initialized")
}

#' install_instaloadeR
#'
#'
#' @description Installs the instaloader Python module
#' @param envname specify Python environment name for module installation
#' @export
install_instaloadeR <- function(envname = NULL){
  reticulate::py_install(c("instaloader"), pip = T, envname = envname)
}

#' from_unix
#'
#' @description Converts UNIX timestamp to datetime format
#' @param x UNIX timestamp to be converted to datetime
#' @export
from_unix <- function(x) {
  as.POSIXct(as.numeric(x), origin = '1970-01-01', tz = 'UTC')
}



hashies <- c("2a", "2ndamendment", "acab", "amerikkka", "anarchy", "aoc",
             "barbz4bernie", "bernie_", "bernie2020", "berniesanders",
             "biden", "biden2020", "blackconservative",
             "blacklivesmatter", "blackrepublican", "blexit",
             "blm", "climatestrike", "communism", "communist",
             "conservativegirls", "conservativehypehouse", "conservativerepublican",
             "conservatives", "creepyjoebiden",
             "democraticsocialism", "democrats", "donaldjtrump", "donaldtrump",
             "donaldtrump2020", "dumptrump", "eattherich", "fakenews",
             "feelthebern", "feminism", "feminist", "georgefloyd", "guncontrol",
             "impeach", "impeachment", "impeachtrump",
             "joebiden", "justiceforgeorgefloyd",  "kag2020",
             "kavanaugh", "keepamericagreat", "leftist", "leftists", "lgbtrights",
             "liberal", "liberalhypehouse", "liberalism", "liberals", "liberalsaredumb",
             "libertarian", "libsoc", "lockhimup", "maga", "maga2020", "magachallenge",
             "notmeus", "obama", "openyoureyes_", "political", "politicalhumor",
             "politicallyincorrect", "potus", "presidenttrump", "pro2a", "prochoice",
             "progressive", "prolife", "protest",
             "republican", "republicanhypehouse",
             "republicans", "slavery", "soc", "socialism",
             "socialist", "tedcruz", "thanksobama", "tpusa",
             "transrights", "triggeredliberal", "trump", "trump10to20",
             "trump2020", "trump2020kag", "trumppence", "trumpsupporters",
             "trumptards", "trumpteam", "trumptrain", "trumptrain2020",
             "trumpvoters", "twogenders", "usgovernment", "uspolitics", "vote",
             "votebiden", "voteblue", "voteblue2020", "votebluenomatterwho",
             "votetrump", "warren2020", "whiteprivilege", "woke",
             "wokeposting", "women4trump", "womenfortrump", "ww3",
             "yang", "yang2020", "yanggang") %>% unique %>% unlist %>% rev

c("republicans", "slavery", "soc", "socialism",
  "socialist", "tedcruz", "thanksobama", "tpusa",
  "2a", "2ndamendment", "acab", "amerikkka", "anarchy", "aoc",
  "barbz4bernie", "bernie_", "bernie2020", "berniesanders",
  "biden", "biden2020", "blackconservative",
  "blacklivesmatter", "blackrepublican", "blexit",
  "blm", "climatestrike", "communism", "communist",
  "conservativegirls", "conservativehypehouse", "conservativerepublican",
  "conservatives", "creepyjoebiden") -> ww

c( "democraticsocialism", "democrats", "donaldjtrump", "donaldtrump",
   "donaldtrump2020", "dumptrump", "eattherich", "fakenews",
   "feelthebern", "feminism", "feminist", "georgefloyd", "guncontrol",
   "impeach", "impeachment", "impeachtrump") -> rr

c("joebiden", "justiceforgeorgefloyd",  "kag2020",
"kavanaugh", "keepamericagreat", "leftist", "leftists", "lgbtrights",
"liberal", "liberalhypehouse", "liberalism", "liberals", "liberalsaredumb",
"libertarian", "libsoc", "lockhimup", "maga", "maga2020", "magachallenge",
"notmeus", "obama", "openyoureyes_", "political", "politicalhumor",
"politicallyincorrect", "potus", "presidenttrump", "pro2a", "prochoice",
"progressive", "prolife", "protest",
"republican", "republicanhypehouse") -> tt

c("transrights", "triggeredliberal", "trump", "trump10to20",
  "trump2020", "trump2020kag", "trumppence", "trumpsupporters",
  "trumptards", "trumpteam", "trumptrain", "trumptrain2020",
  "trumpvoters", "twogenders", "usgovernment", "uspolitics", "vote") -> oo


hashies %>%
  purrr::discard(~magrittr::is_in(.x, ww)) %>%
  purrr::discard(~magrittr::is_in(.x, rr)) %>%
  purrr::discard(~magrittr::is_in(.x, tt)) %>%
  purrr::discard(~magrittr::is_in(.x, oo))

c("conservatives",
  "impeachment",
  "republican",
  "uspolitics",
  "voteblue")


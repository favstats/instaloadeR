
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




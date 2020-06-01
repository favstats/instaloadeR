
#' init_instaloadeR
#'
#' @describtion Initializes the instaloader python functions. Only works when \code{install_instaloadeR()} has ben executed.
#' @export
init_instaloadeR <- function(){

  reticulate::source_python("https://raw.githubusercontent.com/favstats/instaloadeR/master/script.py")

  message("instaloader initialized")
}

#' install_instaloadeR
#'
#'
#' @describtion Installs the instaloader Python module
#' @param envname specify Python environment name for module installation
#' @export
install_instaloadeR <- function(envname = NULL){
  reticulate::py_install(c("instaloader"), pip = T, envname = envname)
}




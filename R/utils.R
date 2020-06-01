
#' init_instaloadeR
#' @export
init_instaloadeR <- function(){
  ## doesnt work for some reason??
  readr::write_lines(py_instaloader, "script.py")
  reticulate::source_python("script.py")
  # reticulate::source_python("https://raw.githubusercontent.com/favstats/instaloadeR/master/script.py")
  # py_instaloader <- readr::read_lines("https://raw.githubusercontent.com/favstats/instaloadeR/master/script.py")
  # usethis::use_data(py_instaloader, overwrite = T)
  # readr::write_lines(python_script, path = "script.py")
  message("instaloader initialized!")
}


#' install_instaloadeR
#' @export
install_instaloadeR <- function(envname = NULL){
  reticulate::py_install(c("instaloader"), pip = T, envname = envname)
}




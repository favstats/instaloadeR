#' insta_login
#'
#' @param passwd Specify your Instagram password. If you leave empty a prompt will ask you for input.
#' @param save save your session so you don't need to specify password again
#' @param load load the instagram session by just setting INSTAGRAM_LOGIN environment variable. Will only work if you have saved your credentials before.
#' @export
insta_login <- function(passwd = "", save = F, load = F) {

  if(Sys.getenv("INSTAGRAM_LOGIN") != ""){
    user <- Sys.getenv("INSTAGRAM_LOGIN")
  } else {
    stop("You need to set a INSTAGRAM_LOGIN environment variable.")
  }
  if (!load){
    if(Sys.getenv("INSTAGRAM_PW") != ""){
      passwd <- Sys.getenv("INSTAGRAM_PW")
    } else if (passwd == ""){
      passwd <- rstudioapi::askForPassword("Please enter your Instagram PW")
    }
  }


  py$insta_login_py(user, passwd, save)
}

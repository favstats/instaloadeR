# reticulate::python_source("")

#' get_posts
#' @export
insta_posts <- function(query, scope, max_posts, scrape_comments, save_path = "") {
  insta_posts_py(query, scope, max_posts, scrape_comments, save_path)%>%
    purrr::flatten() %>%
    dplyr::bind_rows()
}

#' init_instaloadeR
#' @export
init_instaloadeR <- function(){
  reticulate::source_python("https://raw.githubusercontent.com/favstats/instaloadeR/master/script.py")
}

#' install_instaloadeR
#' @export
install_instaloadeR <- function(envname = NULL){
  reticulate::py_install(c("instaloader"), pip = T, envname = envname)
}




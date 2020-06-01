#' get_posts
#' @export
insta_posts <- function(query, scope, max_posts, scrape_comments, save_path = "") {
  insta_posts_py(query, scope, max_posts, scrape_comments, save_path)%>%
    purrr::flatten() %>%
    dplyr::bind_rows() %>%
    unique()
}

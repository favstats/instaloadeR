#' insta_posts
#'
#' @param query Specify hashtag or username
#' @param scope takes two values, either \code{hashtag} or \code{username}
#' @param max_posts what is the maximum amount of posts to scrape
#' @param scrape_comments get all comments from the retrieved posts (defaults to \code{FALSE}`)
#' @param save_path specify a path to stream the Instagram data to (defaults to  \code{""} in which case no csv file is saved)
#' @param since optional. get posts in specific timerange (latest date)
#' @param until optional. get posts in specific timerange (earliest date)
#' @export
insta_posts <- function(query, scope, max_posts, scrape_comments, save_path = "", since = "", until = "") {

  py$insta_posts_py(query, scope, max_posts, scrape_comments, save_path, since, until) %>%
    purrr::flatten() %>%
    dplyr::bind_rows() %>%
    unique()# %>%
    # dplyr::mutate(timestamp = from_unix(timestamp))
}

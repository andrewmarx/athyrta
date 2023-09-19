# Copyright (c) 2023 Andrew Marx. All rights reserved.
# Licensed under GPLv3.0. See LICENSE file in the project root for details.

#' Connection proof of concept
#'
#' Download data from a table
#'
#' @param base_url Url to a web app or service
#' @param table Data table name
#' @param auth Unused
#'
#' @return Data frame
#'
#' @examples
#' \dontrun{
#'   # This example will not work
#'   result = test("example.com", "data_table")
#' }
#'
#'
#' @export

test <- function(base_url, table, auth) {
  req = httr2::request(base_url)

  req = req |>
    req_url_path_append("api") |>
    req_url_path_append(table)

  result = req_perform(req)

  resp_body_json(result, simplifyVector = TRUE)
}

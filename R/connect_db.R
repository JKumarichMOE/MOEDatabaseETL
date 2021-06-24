#' Connect to DB
#'
#' Runs the initial connection to the Microsoft SQL Server database. Default parameters are
#' set to connect to the Learner BDS.
#'
#' The connection uses the current users Windows Authentication Key, so no username or
#' password is required.
#'
#' @param server Address of server - e.g. learnerbds.db.moe.govt.nz
#' @param database Name of database - e.g. LearnerBDS
#' @return Connection variable to database
#' @export
connect_db <- function(server="learnerbds.db.moe.govt.nz", database="LearnerBDS") {
  conn <- tryCatch({
    DBI::dbConnect(
    odbc::odbc(),
    Driver   = "SQL Server",
    Server   = server,
    Database = database,
    Port     = 1433)
  }, error = function(cond) {
    message(
      paste0(
        'Error connecting to database: \n    Server = ', server, '\n    Database = ', database
      )
    )
    message(cond)
  })
  return(conn)
}

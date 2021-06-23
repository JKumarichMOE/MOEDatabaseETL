connect_db <- function(server="learnerbds.db.moe.govt.nz", database="LearnerBDS") {

  conn <- DBI::dbConnect(
    odbc::odbc(),
    Driver   = "SQL Server",
    Server   = server,
    Database = database,
    Port     = 1433)

  return(conn)
}




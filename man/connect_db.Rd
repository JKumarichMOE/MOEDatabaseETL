% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_db.R
\name{connect_db}
\alias{connect_db}
\title{Connect to DB}
\usage{
connect_db(server = "learnerbds.db.moe.govt.nz", database = "LearnerBDS")
}
\arguments{
\item{server}{Address of server - e.g. learnerbds.db.moe.govt.nz}

\item{database}{Name of database - e.g. LearnerBDS}
}
\value{
Connection variable to database
}
\description{
Runs the initial connection to the Microsoft SQL Server database. Default parameters are
set to connect to the Learner BDS.
}
\details{
The connection uses the current users Windows Authentication Key, so no username or
password is required.
}

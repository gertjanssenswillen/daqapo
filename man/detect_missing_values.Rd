% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect_missing_values.R
\name{detect_missing_values}
\alias{detect_missing_values}
\title{Detect missing values}
\usage{
detect_missing_values(
  activitylog,
  level_of_aggregation,
  column,
  details,
  filter_condition
)
}
\arguments{
\item{activitylog}{The activity log}

\item{level_of_aggregation}{Level of aggregation at which missing values are identified (either "overview", "column" or "activity)}

\item{column}{Column name of the column that needs to be analyzed when the level of aggregation is "column"}

\item{details}{Boolean indicating wheter details of the results need to be shown}

\item{filter_condition}{Condition that is used to extract a subset of the activity log prior to the application of the function}
}
\value{
activitylog containing the rows of the original activity log which contain a missing value
}
\description{
Function detecting missing values at different levels of aggregation
\itemize{
\item overview: presents an overview of the absolute and relative number of missing values for each column
\item column: presents an overview of the absolute and relative number of missing values for a particular column
\item activity: presents an overview of the absolute and relative number of missing values for each column, aggregated by activity
}
}
\examples{
\donttest{
data("hospital_actlog")
detect_missing_values(activitylog = hospital_actlog)
detect_missing_values(activitylog = hospital_actlog, level_of_aggregation = "activity")
detect_missing_values(activitylog = hospital_actlog, level_of_aggregation = "column",
     column = "triagecode")
}
}

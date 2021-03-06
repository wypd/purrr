% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_names.R
\name{set_names}
\alias{set_names}
\title{Set names in a vector}
\usage{
set_names(x, nm = NULL, ...)
}
\arguments{
\item{x}{Vector to name}

\item{nm, ...}{Vector of names, the same length as \code{x}.

You can specify names in three ways:
\itemize{
\item If you do nothing, \code{x} will be named with itself
\item You can supply either a character vector to \code{nm} or individual
strings in to `...``
\item If \code{x} already has names, you can provide a function or formula
to transform the existing names.
}}
}
\value{
\code{.x} with the names attribute set.
}
\description{
This is a snake case wrapper for \code{\link[stats:setNames]{stats::setNames()}}, with
tweaked defaults, and stricter argument checking.
}
\examples{
set_names(1:4, c("a", "b", "c", "d"))
set_names(1:4, letters[1:4])
set_names(1:4, "a", "b", "c", "d")

# If the second argument is ommitted a vector is named with itself
set_names(letters[1:5])

# Alternatively you can supply a function
set_names(1:10, ~ letters[seq_along(.)])
set_names(head(mtcars), toupper)
}

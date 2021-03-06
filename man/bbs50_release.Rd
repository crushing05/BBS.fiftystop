% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bbs_fiftystop.R
\name{bbs50_release}
\alias{bbs50_release}
\title{Make a data release.}
\usage{
bbs50_release(..., path = NULL)
}
\arguments{
\item{...}{Parameters passed through to \code{\link{github_release_create}}}

\item{path}{Path to the data (see \code{\link{bbs_fiftystop}}).}
}
\description{
Maintainer-only function for releasing data.  This will look at
the version in the DESCRIPTION file and make a data release if the
GitHub repository contains the same version as we have locally.
Requires the \code{GITHUB_TOKEN} environment variable to be set.
}


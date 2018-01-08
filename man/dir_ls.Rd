% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list.R
\name{dir_ls}
\alias{dir_ls}
\alias{dir_walk}
\alias{dir_info}
\title{List files}
\usage{
dir_ls(path = ".", all = FALSE, recursive = FALSE, type = "any",
  regexp = NULL, glob = NULL, ...)

dir_walk(path = ".", fun, all = FALSE, recursive = FALSE, type = "any")

dir_info(path = ".", all = FALSE, recursive = FALSE, type = "any",
  regexp = NULL, glob = NULL, ...)
}
\arguments{
\item{path}{A character vector of paths.}

\item{all}{If \code{TRUE} hidden files are also returned.}

\item{recursive}{Should directories be listed recursively?
the filenames.}

\item{type}{File type(s) to return, one or more of "any", "file", "directory",
"symlink", "FIFO", "socket", "character_device" or "block_device".}

\item{glob, regexp}{Either a file glob (e.g. \code{*.csv}) or a regular
expression (e.g. \code{\\.csv$)} passed on to \link{grep} to filter paths.}

\item{...}{Additional arguments passed to \link{grep}.}

\item{fun}{A function, taking one parameter, the current path entry.}
}
\description{
\code{dir_ls()} is equivalent to the \code{ls} command. \code{dir_info()} is equivalent to
\code{ls -l}.
}
\section{Functions}{
\itemize{
\item \code{dir_walk}: Walk along a directory, calling \code{f} for each entry in
the directory.

\item \code{dir_info}: A shortcut for the combination of \code{file_info(dir_ls())}.
}}

\examples{
dir_ls(R.home("share"), type = "directory")

link_create(system.file(package = "base"), "base")

dir_ls("base", recursive = TRUE, glob = "*.R")
dir_walk(system.file(), str)
dir_info("base")

# Cleanup
link_delete("base")
}
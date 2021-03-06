% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rsession.R
\name{gcs_save_all}
\alias{gcs_save_all}
\alias{gcs_load_all}
\alias{gcs_delete_all}
\title{Save/Load all files in directory to Google Cloud Storage}
\usage{
gcs_save_all(
  directory = getwd(),
  bucket = gcs_get_global_bucket(),
  pattern = "",
  predefinedAcl = c("private", "bucketLevel", "authenticatedRead",
    "bucketOwnerFullControl", "bucketOwnerRead", "projectPrivate", "publicRead",
    "default")
)

gcs_load_all(
  directory = getwd(),
  bucket = gcs_get_global_bucket(),
  exdir = directory,
  list = FALSE
)

gcs_delete_all(directory = getwd(), bucket = gcs_get_global_bucket())
}
\arguments{
\item{directory}{The folder to upload/download}

\item{bucket}{Bucket to store within}

\item{pattern}{An optional regular expression. Only file names which match the regular expression will be saved.}

\item{predefinedAcl}{Specify user access to object. Default is 'private'. Set to 'bucketLevel' for buckets with bucket level access enabled.}

\item{exdir}{When downloading, specify a destination directory if required}

\item{list}{When downloading, only list where the files would unzip to}
}
\value{
When uploading the GCS meta object; when downloading \code{TRUE} if successful
}
\description{
This function takes all the files in the directory, zips them, and saves/loads/deletes them to the cloud.  The upload name will be the directory name.
}
\details{
Zip/unzip is performed before upload and after download using \link[zip]{zipr}.
}
\examples{

\dontrun{

gcs_save_all(
  directory = "path-to-all-images",
  bucket = "my-bucket",
  predefinedAcl = "bucketLevel")
}
}
\seealso{
Other R session data functions: 
\code{\link{gcs_load}()},
\code{\link{gcs_save_image}()},
\code{\link{gcs_save}()},
\code{\link{gcs_source}()}
}
\concept{R session data functions}

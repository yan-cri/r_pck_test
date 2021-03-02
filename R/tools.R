#' tools Function
#'
#' @param metadata.fname Path to the metadata file
#' @return noting
#' @export
#' @examples
#' read.metadata()
#'
###2. check metadata file formate and read in to system
read.metadata <- function(metadata.fname) {
  if ( tools::file_ext(metadata.fname) == 'txt' ) {
    metadata       <- utils::read.delim(metadata.fname)
  } else if ( file_ext(metadata.fname) == 'yaml' ) {
    metadata       <- configr::read.config(metadata.fname)
  } else {
    print('ERROR: metadata needs to be either .txt or .yaml files')
  }
  return(metadata)
}

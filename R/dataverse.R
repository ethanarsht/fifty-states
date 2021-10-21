#' Add Files to Harvard Dataverse
#'
#' NOT TO BE USED DIRECTLY
#'
#' @param files files to upload
#'
#' @return list of file IDs
#' @export
#'
#' @examples
#' # intended for internal use
#' @noRd
push_dataverse <- function(files) {

    choice <- utils::menu(choices = c("yeah", "nah"),
                          title = "Did you want to upload to the Dataverse?")

    if (choice == 2) {
        stop("Push aborted.")
    }

    ds <- dataverse::get_dataset(dataset = "doi:10.7910/DVN/SLCD3E")

    lapply(files,
           function(x) {
               dataverse::add_dataset_file(x, dataset = ds, description = fs::path_ext_remove(fs::path_file(x)))
           }

    )
}

update_website <- function(map, plans, alarm_path = "../alarm-redist.github.io") {
    fs::file_copy('web_template.Rmd', new_path = fs::path("data-out", attr(map, "analysis_name"), ext = 'Rmd'))

    usethis::proj_set(path = alarm_path)

    fs::file_copy(fs::path("data-out", attr(map, "analysis_name"), ext = 'Rmd'), )
    usethis::proj_set(path = '.')
}


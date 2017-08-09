# httr::set_config(httr::config(ssl_verifypeer = 0L))
# devtools::install_github('crushing05/rBBS')
# library(rBBS)

counts <- rBBS::GetRouteData(TenStops = FALSE)
weather <- rBBS::GetWeather()
routes <- rBBS::GetRoutes()

bbs <- list(counts = counts, weather = weather, routes = routes)
saveRDS(bbs, 'bbs_fiftystop.rds')

httr::set_config(httr::config(ssl_verifypeer = 0L))
BBS.fiftystop::bbs50_release()

pkg <- datastorr::autogenerate("crushing05/BBS.fiftystop", "readRDS",filename = "bbs_fiftystop.rds",
                        name="bbs_fiftystop", roxygen=TRUE)
writeLines(c("```r", pkg,  "```"))

# devtools::install_github('crushing05/rBBS')
# library(rBBS)

counts <- GetRouteData(TenStops = FALSE)
weather <- GetWeather()
routes <- GetRoutes()

bbs <- list(counts = counts, weather = weather, routes = routes)
saveRDS(bbs, 'bbs_fiftystop.rds')

pkg <- datastorr::autogenerate("crushing05/BBS.fiftystop", "readRDS",filename = "bbs_fiftystop.rds",
                        name="bbs_fiftystop", roxygen=TRUE)
writeLines(c("```r", pkg,  "```"))

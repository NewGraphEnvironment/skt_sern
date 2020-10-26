

##load up the api_key object from a private file not pushed to the repo
source('R/packages.R')
source('R/private_info.R')

##set up the access
ckanr_setup(url = "https://data.skeenasalmon.info/", key = api_key)

##get a tibble of the packages available
packages <- as_tibble(package_list(as = "table", limit = 999))


##list the files that have a certain tag
files <- tag_list('water temperature', as = 'table')

##get details about groups
groups <- group_list()

##find the package id
test <- package_show('wild-salmon-policy', as = 'table')$resources[, 1:10]

##identify what we want to download
res <- resource_show(id = "da709417-6db3-48b2-8839-36bfbf8aba2b", as = "table")

##create a folder to download to 
dir.create(paste0(getwd(), '/data'))

##download and name the same as in the SKT
ckan_fetch(res$url, 'disk', path = paste0(getwd(), '/data/', basename(res$url)))







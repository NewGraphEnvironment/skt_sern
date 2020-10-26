##load up the api_key object from a private file not pushed to the repo
source('R/packages.R')
source('R/private_info.R')


##set up the access
ckanr_setup(url = "https://data.skeenasalmon.info/", key = api_key)


##here we are testing creating a package
res <- package_create("hello-world", author="Al Irvine")

##have a look at the package
test <- package_show('hello-world', as = 'table')

##delete a package
package_delete(test$id)  ##it says true but I can't recreate this same package....

##see which license we want
licenses <- bind_rows(license_list())

##need to find our organization id
organization_list(limit = 999)
organization_show('society-for-ecosystem-restoration-in-northern-bc') ##df61281b-d127-44e3-8b9f-a4f4a9a5c4a4





##add a list of tags
tags <- c('eDNA', 'fish detection')
notes <- 'This is a test for setting up a dataset via R interface'

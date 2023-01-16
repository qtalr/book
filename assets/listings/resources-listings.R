# ABOUT -------------------------------------------------------------------

# Description: A script to pull bookmarks from Pinboard.in
# Usage: Source this script with an internet connection
# Author: Jerid C. Francom
# Date: 2021-06-22

# NOTE:
# To re-run these to refresh the rds data
# then delete the rmarkdown chunk cache to update


# SETUP -------------------------------------------------------------------

pacman::p_load(tidyverse, jsonlite)

get_pinboard_info <- function(url) {
  document <- fromJSON(txt=url)
  document %>%
    mutate(Resource = paste0('<a href="', document$u, '">', document$d, '</a>')) %>%
    arrange(d) %>%
    select(Resource, Description = n)
}

# Repositories ------------------------------------------------------------

# Specify: textbook, repository, corpora
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:repository/t:corpora/"

data_repositories <- get_pinboard_info(url)
saveRDS(data_repositories, "resources/data_repositories.rds")

# Corpora -----------------------------------------------------------------

# Specify: textbook, data, corpora
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:data/t:corpora/"

data_corpora <- get_pinboard_info(url)
saveRDS(data_corpora, "resources/data_corpora.rds")


# R API interfaces --------------------------------------------------------

# Specify: textbook, language, api
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:language/t:api/"

data_apis <- get_pinboard_info(url)
saveRDS(data_apis, "resources/data_apis.rds")


# Experimental ------------------------------------------------------------

# Specify: textbook, data, experimental
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:data/t:experimental/"

data_experimental <- get_pinboard_info(url)
saveRDS(data_experimental, "resources/data_experimental.rds")

# Corpus listings ---------------------------------------------------------

# Specify: textbook, data, listing
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:data/t:listing/"

data_listings <- get_pinboard_info(url)
saveRDS(data_listings, "resources/data_listings.rds")



# RESEARCH ----------------------------------------------------------------

# Encyclopedias
# Specify: textbook, reference, research
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:reference/t:research/"

reference_linguistics <- get_pinboard_info(url)
saveRDS(reference_linguistics, "resources/reference_linguistics.rds")

# Journals in Linguistics
# Specify: textbook, journals, linguistics
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:journals/t:linguistics/"

journals_linguistics <- get_pinboard_info(url)
saveRDS(journals_linguistics, "resources/journals_linguistics.rds")

# Journals in Digital Humanities
# Specify: textbook, journals, digital-humanities
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:journals/t:digital-humanities/"

journals_humanities <- get_pinboard_info(url)
saveRDS(journals_humanities, "resources/journals_humanities.rds")

# Journals in Computational Linguistics
# Specify: textbook, journals, computational-linguistics
url <- "https://feeds.pinboard.in/json/secret:c2bbe3d128210109bb00/u:jerid.francom/t:textbook/t:journals/t:computational-linguistics/"

journals_cl <- get_pinboard_info(url)
saveRDS(journals_cl, "resources/journals_cl.rds")




# For reading metadata and adding information into the metadata.


some_list = c(40,44,38,48,35,42)
comment(some_list) = c('heights of 3rd grade students in inches')
comment(some_list)
some_matrix <- matrix(1:20, 4,5)
comment(some_matrix) <- c(info = 'important matrix containing secret information',
                          date = '22nd October 2020')
comment(some_matrix)
# install.packages(c("NLP", "tm"))
# meta() function in R allows us to access and modify metadat for text documents and 
# corpora
library(NLP)
library(tm)
data("crude")
crude

# Corpus metadata is in the form of tag-value pairs and associated with the corpus
# as a whole.
meta(crude, type = "corpus") # to query corpus specific meta data

meta(crude, tag = 'dataset', type = "corpus") <- 'Crude Oil'
meta(crude,tag = 'labels') = 'Oil News'
meta(crude, type = "indexed")

crude[1]
crude[[1]]

sample <- sapply(crude, function(x) {x$content}) # sapply
sample

strwrap(crude[[1]]) # string wrap function

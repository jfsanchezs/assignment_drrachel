#Load package
library(tidyr)

#Load data (create object)
assembly_llactis <- read.csv("jeysson/data/trimmed/allteststats", sep="\t")

#Separate "k" values, create a new column.
assembly_llactis2 <- separate(assembly_llactis,n,c("name1","n"), sep=":") %>%
  separate(name1,c("k","name1"),sep="-") %>% separate(k,c("name2","k"),sep="k")

#Plot N50 and total length as a function of k
ggplot(assembly_llactis2,aes(k,N50))+geom_line()+geom_point()
ggplot(assembly_llactis2,aes(k,sum))+geom_point()
ggplot(assembly_llactis2,aes(N50,as.integer(n)))+geom_point()
ggplot(assembly_llactis2,aes(N50,as.integer(n)))+geom_point()+
  geom_smooth(method="lm", se=FALSE)

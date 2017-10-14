
setwd("~/LocalGitHubFiles/MSDS-CASE_STUDY1_JEFF-JEREMY")

getwd()

#Loading In data file ex0525.csv
Beers <- read.csv('Beers.csv',header = T,sep = ",")
head(Beers)
str(Beers)

Brew <- read.csv('Breweries.csv',header = T,sep = ",")
colnames(Brew) <- c("Brewery_id","Brewery Name","City","State")
head(Brew)
str(Brew)

BrewbyState <- table(Brew$State)
BrewbyState

barplot(BrewbyState,
        main="Main",
        xlab="X Label",
        ylab="Y Label",
        horiz = TRUE,
        las=1,
        ylim = c(0,51),
        cex.names=0.75)


BrewMerged <- merge(Brew,Beers, by="Brewery_id",all=TRUE)


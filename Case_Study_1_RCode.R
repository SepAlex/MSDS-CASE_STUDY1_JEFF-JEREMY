#Loading In data file ex0525.csv
Beers <- read.csv('C:/Users/Prodigy/Documents/Personal Info/SMU/MSDS 6306 - Doing Data Science/Case Study 1/Beers.csv',header = T,sep = ",")
head(Beers)
str(Beers)

Brew <- read.csv('C:/Users/Prodigy/Documents/Personal Info/SMU/MSDS 6306 - Doing Data Science/Case Study 1/Breweries.csv',header = T,sep = ",")
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


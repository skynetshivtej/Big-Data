AppStore <- read.csv("C:\\Users\\SHIVTEJ\\Downloads\\app-store-apple-data-set-10k-apps\\AppleStore.csv",encoding="UTF-8");

require(stringr)

abc <- AppStore$track_name;
AppStore$track_name<-iconv(abc, to = "ASCII//TRANSLIT")
AppStore$track_name<-gsub("[][!#$%+-?()*,.:;<=>@^_`|~.{}]", "", AppStore$track_name)

write.csv(file="AppleStore.csv",AppStore)


boxdigram <-read.csv("C:\\Users\\SHIVTEJ\\Documents\\Moodle\\Sem 2\\PDA\\Project Paper\\test.csv")
boxdigramtable <- boxdigram[1:10,]
barplot(boxdigramtable)


library(ggplot2)

ggplot(boxdigramtable, aes(boxdigramtable$prime_genre,boxdigramtable$X_c1,label=boxdigramtable$X_c)) + geom_point(color='darkblue')+geom_text(aes(label=boxdigramtable$X_c1),hjust=0, vjust=0)+labs(x="Genre",y="No Of Apps on AppStore")




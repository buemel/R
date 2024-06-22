# test 01
rep(1, 3)
rep(1:3, 3)
f = factor(1:3, labels = c("G1", "G2", "G3"))
summary(f)
runif(10, min = 0, max = 10)
floor(runif(10, min = 0, max = 10))
summary(floor(runif(10, min = 0, max = 10)))
n = floor(runif(10, min = 0, max = 10))
summary(n)
ID  <- seq (1:15)
ID2 <- seq(13, -1, by = -1)
GruppenNr <- c(rep(1, times = 3), rep(2, times = 3), rep(3, times = 3), 
                 +                rep(4, times = 3), rep(5, times = 3))
GruppenNr <- factor(GruppenNr,             labels=c("Gruppe1","Gruppe2","Gruppe3","Gruppe4","Gruppe5"))
Datensatz <- data.frame(ID = ID,ID2 = ID2,GruppenNr = GruppenNr)
Datensatz$Geschlecht <- c("w", rep(c("w", "m"), times = 7))
Datensatz$Messwert <- rnorm(15)
View(Datensatz)
fix(Datensatz)
edit(Datensatz)
Datensatz$ID2 <- NULL
rm(ID, ID2, GruppenNr)
str(Datensatz)
Datensatz[1,]
Datensatz[,1]
Datensatz[1,1]
Datensatz[c(1,3,5),]
Datensatz[order(Datensatz$Messwert),]
Datensatz <- Datensatz[order(Datensatz$Messwert),]
Datensatz <- Datensatz[order(Datensatz$ID),]
Datensatz$Geschlecht == "w"
Datensatz$Geschlecht != "m"
Datensatz$Messwert[Datensatz$Geschlecht == "w"]
Datensatz$Messwert[Datensatz$Geschlecht == "w"]

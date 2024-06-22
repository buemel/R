# test 01

R version 4.3.3 (2024-02-29) -- "Angel Food Cake"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin20 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> cd R
Error: unexpected symbol in "cd R"
> pwd
Error: object 'pwd' not found
> rep(1, 3)
[1] 1 1 1
> rep(1:3, 3)
[1] 1 2 3 1 2 3 1 2 3
> f = factor("Hallo")
> f
[1] Hallo
Levels: Hallo
> f = factor("Hallo", "Peter")
> f
[1] <NA>
  Levels: Peter
> f = factor(1:10)
> f
[1] 1  2  3  4  5  6  7  8  9  10
Levels: 1 2 3 4 5 6 7 8 9 10
> f = factor(1:3, labels = c("G1", "G2", "G3")))
Error: unexpected ')' in "f = factor(1:3, labels = c("G1", "G2", "G3")))"
> f = factor(1:3, labels = c("G1", "G2", "G3"))
> f
[1] G1 G2 G3
Levels: G1 G2 G3
> summary(f)
G1 G2 G3 
1  1  1 
> runif(10, min = 0, max = 10)
[1] 3.034064 2.999984 2.974941 4.236162 9.632120 7.341994 3.520374 6.301070
[9] 9.514292 9.134314
> floor(runif(10, min = 0, max = 10))
[1] 2 5 6 0 8 7 5 7 6 4
> summary(floor(runif(10, min = 0, max = 10)))
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2.0     2.0     4.0     4.5     6.0     9.0 
> n = floor(runif(10, min = 0, max = 10))
> n
[1] 8 3 3 5 2 6 7 8 2 7
> summary(n)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2.0     3.0     5.5     5.1     7.0     8.0 
> n = floor(runif(11, min = 0, max = 10))
> summary(n)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.000   2.500   5.000   4.364   6.500   8.000 
> ID  <- seq (1:15)
> ID2 <- seq(13, -1, by = -1)
> GruppenNr <- c(rep(1, times = 3), rep(2, times = 3), rep(3, times = 3), 
                 +                rep(4, times = 3), rep(5, times = 3))
> GruppenNr <- factor(GruppenNr,             labels=c("Gruppe1","Gruppe2","Gruppe3","Gruppe4","Gruppe5"))
> GruppenNr
[1] Gruppe1 Gruppe1 Gruppe1 Gruppe2 Gruppe2 Gruppe2 Gruppe3 Gruppe3 Gruppe3
[10] Gruppe4 Gruppe4 Gruppe4 Gruppe5 Gruppe5 Gruppe5
Levels: Gruppe1 Gruppe2 Gruppe3 Gruppe4 Gruppe5
> Datensatz <- data.frame(ID = ID,ID2 = ID2,GruppenNr = GruppenNr)
> Datensatz$Geschlecht <- c("w", rep(c("w", "m"), times = 7))
> Datensatz$Messwert <- rnorm(15)
> Datensatz
ID ID2 GruppenNr Geschlecht   Messwert
1   1  13   Gruppe1          w  2.0151355
2   2  12   Gruppe1          w  0.4217352
3   3  11   Gruppe1          m -0.7079656
4   4  10   Gruppe2          w -1.6063200
5   5   9   Gruppe2          m  1.5755927
6   6   8   Gruppe2          w -1.1902343
7   7   7   Gruppe3          m -0.7114362
8   8   6   Gruppe3          w -1.7620006
9   9   5   Gruppe3          m  1.7294267
10 10   4   Gruppe4          w  0.6329190
11 11   3   Gruppe4          m -0.6678464
12 12   2   Gruppe4          w -1.4452214
13 13   1   Gruppe5          m  1.3471474
14 14   0   Gruppe5          w -1.1455095
15 15  -1   Gruppe5          m -1.4531441
> View(Datensatz)
> fix(Datensatz)
> edit(Datensatz)
ID ID2 GruppenNr Geschlecht   Messwert
1   1  13   Gruppe1          w  2.0151355
2   2  12   Gruppe1          w  0.4217352
3   3  11   Gruppe1          m -0.7079656
4   4  10   Gruppe2          w -1.6063200
5   5   9   Gruppe2          m  1.5755927
6   6   8   Gruppe2          w -1.1902343
7   7   7   Gruppe3          m -0.7114362
8   8   6   Gruppe3          w -1.7620006
9   9   5   Gruppe3          m  1.7294267
10 10   4   Gruppe4          w  0.6329190
11 11   3   Gruppe4          m -0.6678464
12 12   2   Gruppe4          w -1.4452214
13 13   1   Gruppe5          m  1.3471474
14 14   0   Gruppe5          w -1.1455095
15 15  -1   Gruppe5          m -1.4531441
> fix(Datensatz)
> Datensatz$ID2 <- NULL
> rm(ID, ID2, GruppenNr)
> str(Datensatz)
'data.frame':	15 obs. of  4 variables:
  $ ID        : num  1 2 3 4 5 6 7 8 9 10 ...
$ GruppenNr : Factor w/ 5 levels "Gruppe1","Gruppe2",..: 1 1 1 2 2 2 3 3 3 4 ...
$ Geschlecht: chr  "w" "w" "m" "w" ...
$ Messwert  : num  2.015 0.422 -0.708 -1.606 1.576 ...
> Datensatz[1,]
ID GruppenNr Geschlecht Messwert
1  1   Gruppe1          w 2.015136
> Datensatz[,1]
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
> Datensatz[1,1]
[1] 1
> Datensatz[c(1,3,5),]
ID GruppenNr Geschlecht   Messwert
1  1   Gruppe1          w  2.0151355
3  3   Gruppe1          m -0.7079656
5  5   Gruppe2          m  1.5755927
> Datensatz[order(Datensatz$Messwert),]
ID GruppenNr Geschlecht   Messwert
8   8   Gruppe3          w -1.7620006
4   4   Gruppe2          w -1.6063200
15 15   Gruppe5          m -1.4531441
12 12   Gruppe4          w -1.4452214
6   6   Gruppe2          w -1.1902343
14 14   Gruppe5          w -1.1455095
7   7   Gruppe3          m -0.7114362
3   3   Gruppe1          m -0.7079656
11 11   Gruppe4          m -0.6678464
2   2   Gruppe1          w  0.4217352
10 10   Gruppe4          w  0.6329190
13 13   Gruppe5          m  1.3471474
5   5   Gruppe2          m  1.5755927
9   9   Gruppe3          m  1.7294267
1   1   Gruppe1          w  2.0151355
> Datensatz <- Datensatz[order(Datensatz$Messwert),]
> Datensatz
ID GruppenNr Geschlecht   Messwert
8   8   Gruppe3          w -1.7620006
4   4   Gruppe2          w -1.6063200
15 15   Gruppe5          m -1.4531441
12 12   Gruppe4          w -1.4452214
6   6   Gruppe2          w -1.1902343
14 14   Gruppe5          w -1.1455095
7   7   Gruppe3          m -0.7114362
3   3   Gruppe1          m -0.7079656
11 11   Gruppe4          m -0.6678464
2   2   Gruppe1          w  0.4217352
10 10   Gruppe4          w  0.6329190
13 13   Gruppe5          m  1.3471474
5   5   Gruppe2          m  1.5755927
9   9   Gruppe3          m  1.7294267
1   1   Gruppe1          w  2.0151355
> Datensatz <- Datensatz[order(Datensatz$ID),]
> Datensatz$Geschlecht == "w"
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE
[13] FALSE  TRUE FALSE
> Datensatz$Geschlecht != "m"
[1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE
[13] FALSE  TRUE FALSE
> Datensatz$Messwert[Datensatz$Geschlecht == "w"]
[1]  2.0151355  0.4217352 -1.6063200 -1.1902343 -1.7620006  0.6329190
[7] -1.4452214 -1.1455095
> Datensatz
ID GruppenNr Geschlecht   Messwert
1   1   Gruppe1          w  2.0151355
2   2   Gruppe1          w  0.4217352
3   3   Gruppe1          m -0.7079656
4   4   Gruppe2          w -1.6063200
5   5   Gruppe2          m  1.5755927
6   6   Gruppe2          w -1.1902343
7   7   Gruppe3          m -0.7114362
8   8   Gruppe3          w -1.7620006
9   9   Gruppe3          m  1.7294267
10 10   Gruppe4          w  0.6329190
11 11   Gruppe4          m -0.6678464
12 12   Gruppe4          w -1.4452214
13 13   Gruppe5          m  1.3471474
14 14   Gruppe5          w -1.1455095
15 15   Gruppe5          m -1.4531441
> Datensatz$Messwert[Datensatz$Geschlecht == "w"]
[1]  2.0151355  0.4217352 -1.6063200 -1.1902343 -1.7620006  0.6329190
[7] -1.4452214 -1.1455095
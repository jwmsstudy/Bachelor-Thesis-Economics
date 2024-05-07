## set wd and read data ##

setwd("/Users/juliawiegel/Desktop/Julie´s BA/R")
aces_per_match_2019 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/aces_per_match_2019.csv")
aces_per_match_2020 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/aces_per_match_2020.csv")
aces_per_match_2021 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/aces_per_match_2021.csv")
aces_per_svc_g_2019 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/Aces_Svc.Game_2019.csv")
aces_per_svc_g_2020 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/Aces_Svc.Game_2020.csv")
aces_per_svc_g_2021 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/Aces_Svc.Game_2021.csv")
dfs_per_match_2019 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/dfs_per_match_2019.csv")
dfs_per_match_2020 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/dfs_per_match_2020.csv")
dfs_per_match_2021 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/dfs_per_match_2021.csv")
dfs_per_svc_g_2019 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/DFs_Svc.Game_2019.csv")
dfs_per_svc_g_2020 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/DFs_Svc.Game_2020.csv")
dfs_per_svc_g_2021 <- read.csv("/Users/juliawiegel/Desktop/Julie´s BA/CSV Dateien/DFs_Svc.Game_2021.csv")

## add year column to Aces per Match and the other frames ##
aces_per_match_2019$Year <- 2019
aces_per_match_2020$Year <- 2020
aces_per_match_2021$Year <- 2021

aces_per_svc_g_2019$Year <- 2019
aces_per_svc_g_2020$Year <- 2020
aces_per_svc_g_2021$Year <- 2021

dfs_per_match_2019$Year <- 2019
dfs_per_match_2020$Year <- 2020
dfs_per_match_2021$Year <- 2021

dfs_per_svc_g_2019$Year <- 2019
dfs_per_svc_g_2020$Year <- 2020
dfs_per_svc_g_2021$Year <- 2021

## combine data frames ## 
aces_per_match_all <- bind_rows(aces_per_match_2019, aces_per_match_2020, 
                                aces_per_match_2021)

aces_per_svc_g_all <- bind_rows(aces_per_svc_g_2019, aces_per_svc_g_2020, 
                                aces_per_svc_g_2021)

dfs_per_match_all <- bind_rows(dfs_per_match_2019, dfs_per_match_2020, 
                               dfs_per_match_2021)

dfs_per_svc_g_all <- bind_rows(dfs_per_svc_g_2019, dfs_per_svc_g_2020, 
                               dfs_per_svc_g_2021)

## factorize ##
aces_per_match_all$Year <- factor(aces_per_match_all$Year)
aces_per_match_all$surface <- factor(aces_per_match_all$surface)
aces_per_match_all$level <- factor(aces_per_match_all$level)
aces_per_match_all$indoor <- as.logical(aces_per_match_all$indoor)
aces_per_match_all$tournament <- factor(aces_per_match_all$tournament)


str(aces_per_match_all)


aces_per_svc_g_all$Year <- factor(aces_per_svc_g_all$Year)
aces_per_svc_g_all$surface <- factor(aces_per_svc_g_all$surface)
aces_per_svc_g_all$level <- factor(aces_per_svc_g_all$level)
aces_per_svc_g_all$indoor <- as.logical(aces_per_svc_g_all$indoor)
aces_per_svc_g_all$tournament <- factor(aces_per_svc_g_all$tournament)


str(aces_per_svc_g_all)


dfs_per_match_all$Year <- factor(dfs_per_match_all$Year)
dfs_per_match_all$surface <- factor(dfs_per_match_all$surface)
dfs_per_match_all$level <- factor(dfs_per_match_all$level)
dfs_per_match_all$indoor <- as.logical(dfs_per_match_all$indoor)
dfs_per_match_all$tournament <- factor(dfs_per_match_all$tournament)


str(dfs_per_match_all)


dfs_per_svc_g_all$Year <- factor(dfs_per_svc_g_all$Year)
dfs_per_svc_g_all$surface <- factor(dfs_per_svc_g_all$surface)
dfs_per_svc_g_all$level <- factor(dfs_per_svc_g_all$level)
dfs_per_svc_g_all$indoor <- as.logical(dfs_per_svc_g_all$indoor)
dfs_per_svc_g_all$tournament <- factor(dfs_per_svc_g_all$tournament)



str(dfs_per_svc_g_all)


## 2020 setting as covid ##

aces_per_match_all$CovidYear <- ifelse(aces_per_match_all$Year == 2020, 1, 0)
aces_per_svc_g_all$CovidYear <- ifelse(aces_per_svc_g_all$Year == 2020, 1, 0)
dfs_per_match_all$CovidYear <- ifelse(dfs_per_match_all$Year == 2020, 1, 0)
dfs_per_svc_g_all$CovidYear <- ifelse(dfs_per_svc_g_all$Year == 2020, 1, 0)

#############################################################################


## regression for COVID-19 year 2020 ##

lm_aces_per_match_covid <- lm(value ~ CovidYear + level + indoor, data = aces_per_match_all)
summary(lm_aces_per_match_covid)

lm_aces_per_svc_g_covid <- lm(value ~ CovidYear + level + indoor, data = aces_per_svc_g_all)
summary(lm_aces_per_svc_g_covid)

lm_dfs_per_match_covid <- lm(value ~ CovidYear + level + indoor, data = dfs_per_match_all)
summary(lm_dfs_per_match_covid)

lm_dfs_per_svc_g_covid <- lm(value ~ CovidYear + level + indoor, data = dfs_per_svc_g_all)
summary(lm_dfs_per_svc_g_covid)


############# aces per match ###################


##### testing ####

## aces per match CovidYear ##
model1 <- lm(value ~ CovidYear + bestOf + surface + score + level, 
             data = aces_per_match_all)
summary(model1) ##0.4412## 

model2 <- lm(value ~ score, data = aces_per_match_all)
summary(model2) ##0.3865##

model3 <- lm(value ~ CovidYear + score, data = aces_per_match_all)
summary(model3) ##0.4389##

model4 <- lm(value ~ Year, data = aces_per_match_all)
summary(model4) ##0.09373##

model5 <- lm(value ~ CovidYear + bestOf + surface + score, 
             data = aces_per_match_all)
summary(model5) ##0.4413## highest##

model6 <- lm(value ~ CovidYear + bestOf, 
             data = aces_per_match_all)
summary(model6) ##0.114##

model7 <- lm(value ~ surface, data = aces_per_match_all)
summary(model7) ##0.02172##

model8 <- lm(value ~ CovidYear + score + level, 
             data = aces_per_match_all)
summary(model8) ##0.4385## 

model9 <- lm(value ~ CovidYear + surface + score + level, 
             data = aces_per_match_all)
summary(model9) ##0.4412##

## aces per match Year ##
model10 <- lm(value ~ Year + bestOf + surface + score + level, 
             data = aces_per_match_all)
summary(model10) ##0.4443## 

model11 <- lm(value ~ score, data = aces_per_match_all)
summary(model11) ##0.3865##

model12 <- lm(value ~ Year + score, data = aces_per_match_all)
summary(model12) ##0.4419##

model13 <- lm(value ~ Year, data = aces_per_match_all)
summary(model13) ##0.09373##

model14 <- lm(value ~ Year + bestOf + surface + score, 
             data = aces_per_match_all)
summary(model14) ##0.4445## highest##

model15 <- lm(value ~ Year + bestOf, 
             data = aces_per_match_all)
summary(model15) ##0.125##

model16 <- lm(value ~ surface, data = aces_per_match_all)
summary(model16) ##0.02172##

model17 <- lm(value ~ Year + score + level, 
             data = aces_per_match_all)
summary(model17) ##0.4414##

model18 <- lm(value ~ Year + surface + score + level, 
             data = aces_per_match_all)
summary(model18) ## 0.4443##

## aces per svc. game CovidYear ##

model19 <- lm(value ~ CovidYear + bestOf + surface + score + level, 
             data = aces_per_svc_g_all)
summary(model19) ##0.1664##

model20 <- lm(value ~ score, data = aces_per_svc_g_all)
summary(model20) ##0.07202##

model21 <- lm(value ~ CovidYear + score, data = aces_per_svc_g_all)
summary(model21) ##0.1607##

model22 <- lm(value ~ Year, data = aces_per_svc_g_all)
summary(model22) ##0.1187##

model23 <- lm(value ~ CovidYear + bestOf + surface + score, 
             data = aces_per_svc_g_all)
summary(model23) ##0.1666## highest##

model24 <- lm(value ~ CovidYear + bestOf, 
             data = aces_per_svc_g_all)
summary(model24) ##0.1092##

model25 <- lm(value ~ surface, data = aces_per_svc_g_all)
summary(model25) ##0.02278##

model26 <- lm(value ~ CovidYear + score + level, 
             data = aces_per_svc_g_all)
summary(model26) ##0.1608##

model27 <- lm(value ~ CovidYear + surface + score + level, 
             data = aces_per_svc_g_all)
summary(model27) ##0.1664##

## aces per svc. game Year ##
model28 <- lm(value ~ Year + bestOf + surface + score + level, 
              data = aces_per_svc_g_all)
summary(model28) ##0.1722##

model29 <- lm(value ~ score, data = aces_per_svc_g_all)
summary(model29) ##0.07202## 

model29.2 <- lm(value ~ Year + score, data = aces_per_svc_g_all)
summary(model29.2) ##0.0.1667##

model30 <- lm(value ~ Year, data = aces_per_svc_g_all)
summary(model30) ##0.1187##

model31 <- lm(value ~ Year + bestOf + surface + score, 
              data = aces_per_svc_g_all)
summary(model31) ##0.1727## highest##

model32 <- lm(value ~ Year + bestOf, 
              data = aces_per_svc_g_all)
summary(model32) ##0.1196##

model33 <- lm(value ~ surface, data = aces_per_svc_g_all)
summary(model33) ## 0.02278##

model34 <- lm(value ~ Year + score + level, 
              data = aces_per_svc_g_all)
summary(model34) ##0.1666##

model35 <- lm(value ~ Year + surface + score + level, 
              data = aces_per_svc_g_all)
summary(model35) ##0.1722##


## dfs per match CovidYear ##
model36 <- lm(value ~ CovidYear + bestOf + surface + score + level, 
             data = dfs_per_match_all)
summary(model36) ##0.2891## 

model37 <- lm(value ~ score, data = dfs_per_match_all)
summary(model37) ##0.2411##

model38 <- lm(value ~ CovidYear + score, data = dfs_per_match_all)
summary(model38) ##0.2904##

model39 <- lm(value ~ Year, data = dfs_per_match_all)
summary(model39) ##0.07139 ##

model40 <- lm(value ~ CovidYear + bestOf + surface + score, 
             data = dfs_per_match_all)
summary(model40) ##0.2907## highest## 

model41 <- lm(value ~ CovidYear + bestOf, 
             data = dfs_per_match_all)
summary(model41) ##0.09579##

model42 <- lm(value ~ surface, data = dfs_per_match_all)
summary(model42) ##0.007279##

model43 <- lm(value ~ CovidYear + score + level, 
             data = dfs_per_match_all)
summary(model43) ##0.289## 

model44 <- lm(value ~ CovidYear + surface + score + level, 
             data = dfs_per_match_all)
summary(model44) ##0.2891##

## aces per match Year ##
model45 <- lm(value ~ Year + bestOf + surface + score + level, 
              data = dfs_per_match_all)
summary(model45) ##0.2888## 

model46 <- lm(value ~ score, data = dfs_per_match_all)
summary(model46) ##0.2411##

model47 <- lm(value ~ Year + score, data = dfs_per_match_all)
summary(model47) ##0.2901##

model48 <- lm(value ~ Year, data = dfs_per_match_all)
summary(model48) ##0.07139##

model49 <- lm(value ~ Year + bestOf + surface + score, 
              data = dfs_per_match_all)
summary(model49) ##0.2904## highest##

model50 <- lm(value ~ Year + bestOf, 
              data = dfs_per_match_all)
summary(model50) ##0.09627##

model51 <- lm(value ~ surface, data = dfs_per_match_all)
summary(model51) ##0.007279##

model52 <- lm(value ~ Year + score + level, 
              data = dfs_per_match_all)
summary(model52) ##0.2887##

model53 <- lm(value ~ Year + surface + score + level, 
              data = dfs_per_match_all)
summary(model53) ##0.2888##

## aces per svc. game CovidYear ##

model54 <- lm(value ~ CovidYear + bestOf + surface + score + level, 
              data = aces_per_svc_g_all)
summary(model54) ##0.1664##

model55 <- lm(value ~ score, data = aces_per_svc_g_all)
summary(model55) ##0.07202##

model56 <- lm(value ~ CovidYear + score, data = aces_per_svc_g_all)
summary(model56) ##0.1607##

model57 <- lm(value ~ Year, data = aces_per_svc_g_all)
summary(model57) ##0.1187##

model58 <- lm(value ~ CovidYear + bestOf + surface + score, 
              data = aces_per_svc_g_all)
summary(model58) ##0.1666## highest##

model59 <- lm(value ~ CovidYear + bestOf, 
              data = aces_per_svc_g_all)
summary(model59) ##0.1092##

model60 <- lm(value ~ surface, data = aces_per_svc_g_all)
summary(model60) ##0.02278 ##

model61 <- lm(value ~ CovidYear + score + level, 
              data = aces_per_svc_g_all)
summary(model61) ##0.1608##

model62 <- lm(value ~ CovidYear + surface + score + level, 
              data = aces_per_svc_g_all)
summary(model62) ##0.1664##


## dfs per svc. game Year ##
model63 <- lm(value ~ Year + bestOf + surface + score + level, 
              data = dfs_per_svc_g_all)
summary(model63) ##0.08773##

model64 <- lm(value ~ score, data = dfs_per_svc_g_all)
summary(model64) ##0.008427## 

model65 <- lm(value ~ Year + score, data = dfs_per_svc_g_all)
summary(model65) ##0.08724##

model66 <- lm(value ~ Year, data = dfs_per_svc_g_all)
summary(model66) ##0.1012##

model67 <- lm(value ~ Year + bestOf + surface + score, 
              data = dfs_per_svc_g_all)
summary(model67) ##0.0882##

model68 <- lm(value ~ Year + bestOf, 
              data = dfs_per_svc_g_all)
summary(model68) ##0.1067## highest##

model69 <- lm(value ~ surface, data = dfs_per_svc_g_all)
summary(model69) ##0.002485##

model70 <- lm(value ~ Year + score + level, 
              data = dfs_per_svc_g_all)
summary(model70) ##0.08868##

model71 <- lm(value ~ Year + surface + score + level, 
              data = dfs_per_svc_g_all)
summary(model71) ##0.08773##



























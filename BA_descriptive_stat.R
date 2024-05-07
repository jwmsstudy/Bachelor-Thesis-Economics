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

## add year columns ##

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
aces_per_match_2019$Year <- as.factor(aces_per_match_2019$Year)
aces_per_match_2020$Year <- as.factor(aces_per_match_2020$Year)
aces_per_match_2021$Year <- as.factor(aces_per_match_2021$Year)
aces_per_svc_g_2019$Year <- as.factor(aces_per_svc_g_2019$Year)
aces_per_svc_g_2020$Year <- as.factor(aces_per_svc_g_2020$Year)
aces_per_svc_g_2021$Year <- as.factor(aces_per_svc_g_2021$Year)
dfs_per_svc_g_2019$Year <- as.factor(dfs_per_svc_g_2019$Year)
dfs_per_svc_g_2020$Year <- as.factor(dfs_per_svc_g_2020$Year)
dfs_per_svc_g_2021$Year <- as.factor(dfs_per_svc_g_2021$Year)
dfs_per_match_2019$Year <- as.factor(dfs_per_match_2019$Year)
dfs_per_match_2020$Year <- as.factor(dfs_per_match_2020$Year)
dfs_per_match_2021$Year <- as.factor(dfs_per_match_2021$Year)



######################## descripctive statistics ############################
## name adjusting ##
names(aces_per_match_2019)[names(aces_per_match_2019) == "value"] <- "aces_per_match_19"
View(aces_per_match_2019)
names(aces_per_svc_g_2019)[names(aces_per_svc_g_2019) == "value"] <- "aces_per_svc_g_19"
names(dfs_per_svc_g_2019)[names(dfs_per_svc_g_2019) == "value"] <- "dfs_per_svc_g_19"
names(dfs_per_match_2019)[names(dfs_per_match_2019) == "value"] <- "dfs_per_match_19"

names(aces_per_match_2020)[names(aces_per_match_2020) == "value"] <- "aces_per_match_20"
names(aces_per_svc_g_2020)[names(aces_per_svc_g_2020) == "value"] <- "aces_per_svc_g_20"
names(dfs_per_svc_g_2020)[names(dfs_per_svc_g_2020) == "value"] <- "dfs_per_svc_g_20"
names(dfs_per_match_2020)[names(dfs_per_match_2020) == "value"] <- "dfs_per_match_20"

names(aces_per_match_2021)[names(aces_per_match_2021) == "value"] <- "aces_per_match_21"
names(aces_per_svc_g_2021)[names(aces_per_svc_g_2021) == "value"] <- "aces_per_svc_g_21"
names(dfs_per_svc_g_2021)[names(dfs_per_svc_g_2021) == "value"] <- "dfs_per_svc_g_21"
names(dfs_per_match_2021)[names(dfs_per_match_2021) == "value"] <- "dfs_per_match_21"

## standard columns ##
standard_columns.m <- c("rank", "name", "country_name", "country_id", "opponent_name",
                        "opponent_country_name", "opponent_country_id", "date", "tournament", 
                        "level", "bestOf", "surface", "indoor", "speed", "round", "score", 
                        "winner", "aces_per_match_19", "aces_per_svc_g_19", "dfs_per_svc_g_19", 
                        "dfs_per_match_19", "aces_per_match_20", "aces_per_svc_g_20", "dfs_per_svc_g_20", 
                        "dfs_per_match_20", "aces_per_match_21", "aces_per_svc_g_21", "dfs_per_svc_g_21", 
                        "dfs_per_match_21", "Year")

## statistic ##
aces_per_match_2019$Statistic <- 'aces_per_match'
aces_per_match_2019$Year <- 2019
aces_per_svc_g_2019$Statistic <- 'aces_per_svc_g'
aces_per_svc_g_2019$Year <- 2019
dfs_per_match_2019$Statistic <- 'dfs_per_match'
dfs_per_match_2019$Year <- 2019
dfs_per_svc_g_2019$Statistic <- 'dfs_per_svc_g'
dfs_per_svc_g_2019$Year <- 2019

aces_per_match_2020$Statistic <- 'aces_per_match'
aces_per_match_2020$Year <- 2020
aces_per_svc_g_2020$Statistic <- 'aces_per_svc_g'
aces_per_svc_g_2020$Year <- 2020
dfs_per_match_2020$Statistic <- 'dfs_per_match'
dfs_per_match_2020$Year <- 2020
dfs_per_svc_g_2020$Statistic <- 'dfs_per_svc_g'
dfs_per_svc_g_2020$Year <- 2020

aces_per_match_2021$Statistic <- 'aces_per_match'
aces_per_match_2021$Year <- 2021
aces_per_svc_g_2021$Statistic <- 'aces_per_svc_g'
aces_per_svc_g_2021$Year <- 2021
dfs_per_match_2021$Statistic <- 'dfs_per_match'
dfs_per_match_2021$Year <- 2021
dfs_per_svc_g_2021$Statistic <- 'dfs_per_svc_g'
dfs_per_svc_g_2021$Year <- 2021

## adjusting columns ## 
adjust_columns.m <- function(df, standard_columns.m) {
  for (col_name in standard_columns.m) {
    if (!col_name %in% names(df)) {
      df[[col_name]] <- NA  
    }
  }
  df <- df[standard_columns.m]  
  return(df)
}

aces_per_match_2019 <- adjust_columns.m(aces_per_match_2019, standard_columns.m)
aces_per_svc_g_2019 <- adjust_columns.m(aces_per_svc_g_2019, standard_columns.m)
dfs_per_match_2019 <- adjust_columns.m(dfs_per_match_2019, standard_columns.m)
dfs_per_svc_g_2019 <- adjust_columns.m(dfs_per_svc_g_2019, standard_columns.m)

aces_per_match_2020 <- adjust_columns.m(aces_per_match_2020, standard_columns.m)
aces_per_svc_g_2020 <- adjust_columns.m(aces_per_svc_g_2020, standard_columns.m)
dfs_per_match_2020 <- adjust_columns.m(dfs_per_match_2020, standard_columns.m)
dfs_per_svc_g_2020 <- adjust_columns.m(dfs_per_svc_g_2020, standard_columns.m)

aces_per_match_2021 <- adjust_columns.m(aces_per_match_2021, standard_columns.m)
aces_per_svc_g_2021 <- adjust_columns.m(aces_per_svc_g_2021, standard_columns.m)
dfs_per_match_2021 <- adjust_columns.m(dfs_per_match_2021, standard_columns.m)
dfs_per_svc_g_2021 <- adjust_columns.m(dfs_per_svc_g_2021, standard_columns.m)

combined_data.m <- rbind(aces_per_match_2019, aces_per_svc_g_2019, dfs_per_match_2019, 
                         dfs_per_svc_g_2019, aces_per_match_2020, aces_per_svc_g_2020, 
                         dfs_per_match_2020, dfs_per_svc_g_2020, aces_per_match_2021, 
                         aces_per_svc_g_2021, dfs_per_match_2021, dfs_per_svc_g_2021)
View(combined_data.m)

summary(combined_data.m)


## install package dplyr ##
if (!require(dplyr)) install.packages("dplyr")

library(dplyr)


## mean ##
average_stats_19.m <- combined_data.m %>%
  filter(Year == 2019) %>%
  summarize(
    average_aces_per_match_19 = mean(aces_per_match_19, na.rm = TRUE), 
    average_aces_per_svc_g_19 = mean(aces_per_svc_g_19, na.rm = TRUE), 
    average_dfs_per_match_19 = mean(dfs_per_match_19, na.rm = TRUE), 
    average_dfs_per_svc_g_19 = mean(dfs_per_svc_g_19, na.rm = TRUE)
  )

average_stats_20.m <- combined_data.m %>%
  filter(Year == 2020) %>%
  summarize(
    average_aces_per_match_20 = mean(aces_per_match_20, na.rm = TRUE), 
    average_aces_per_svc_g_20 = mean(aces_per_svc_g_20, na.rm = TRUE), 
    average_dfs_per_match_20 = mean(dfs_per_match_20, na.rm = TRUE), 
    average_dfs_per_svc_g_20 = mean(dfs_per_svc_g_20, na.rm = TRUE)
  )


average_stats_21.m <- combined_data.m %>%
  filter(Year == 2021) %>%
  summarize(
    average_aces_per_match_21 = mean(aces_per_match_21, na.rm = TRUE), 
    average_aces_per_svc_g_21 = mean(aces_per_svc_g_21, na.rm = TRUE), 
    average_dfs_per_match_21 = mean(dfs_per_match_21, na.rm = TRUE), 
    average_dfs_per_svc_g_21 = mean(dfs_per_svc_g_21, na.rm = TRUE)
  )    


average_stats_19.m$Year <- 2019
average_stats_20.m$Year <- 2020
average_stats_21.m$Year <- 2021

## variance ##

variance_aces_per_match_2019 = var(combined_data.m$aces_per_match_19, na.rm = TRUE)
cat("Variance Aces Per Match 2019: ", variance_aces_per_match_2019, "\n")
variance_aces_per_match_2020 = var(combined_data.m$aces_per_match_20, na.rm = TRUE)
cat("Variance Aces Per Match 2020: ", variance_aces_per_match_2020, "\n")
variance_aces_per_match_2021 = var(combined_data.m$aces_per_match_21, na.rm = TRUE)
cat("Variance Aces Per Match 2021: ", variance_aces_per_match_2021, "\n")

variance_aces_per_svc_g_2019 = var(combined_data.m$aces_per_svc_g_19, na.rm = TRUE)
cat("Variance Aces Per Svc. Game 2019: ", variance_aces_per_svc_g_2019, "\n")
variance_aces_per_svc_g_2020 = var(combined_data.m$aces_per_svc_g_20, na.rm = TRUE)
cat("Variance Aces Per Svc. Game 2020: ", variance_aces_per_svc_g_2020, "\n")
variance_aces_per_svc_g_2021 = var(combined_data.m$aces_per_svc_g_21, na.rm = TRUE)
cat("Variance Aces Per Svc. Game 2021: ", variance_aces_per_svc_g_2021, "\n")

variance_dfs_per_match_2019 = var(combined_data.m$dfs_per_match_19, na.rm = TRUE)
cat("Variance DFs Per Match 2019: ", variance_dfs_per_match_2019, "\n")
variance_dfs_per_match_2020 = var(combined_data.m$dfs_per_match_20, na.rm = TRUE)
cat("Variance DFs Per Match 2020: ", variance_dfs_per_match_2020, "\n")
variance_dfs_per_match_2021 = var(combined_data.m$dfs_per_match_21, na.rm = TRUE)
cat("Variance DFs Per Match 2021: ", variance_dfs_per_match_2021, "\n")

variance_dfs_per_svc_g_2019 = var(combined_data.m$dfs_per_svc_g_19, na.rm = TRUE)
cat("Variance DFs Per Svc. Game 2019: ", variance_dfs_per_svc_g_2019, "\n")
variance_dfs_per_svc_g_2020 = var(combined_data.m$dfs_per_svc_g_20, na.rm = TRUE)
cat("Variance DFs Per Svc. Game 2020: ", variance_dfs_per_svc_g_2020, "\n")
variance_dfs_per_svc_g_2021 = var(combined_data.m$dfs_per_svc_g_21, na.rm = TRUE)
cat("Variance DFs Per Svc. Game 2021: ", variance_dfs_per_svc_g_2021, "\n")


## standard deviation ##

std_dev_aces_per_match_2019 = sd(combined_data.m$aces_per_match_19, na.rm = TRUE)
cat("Standard Deviation Aces Per Match 2019: ", std_dev_aces_per_match_2019, "\n")
std_dev_aces_per_match_2020 = sd(combined_data.m$aces_per_match_20, na.rm = TRUE)
cat("Standard Deviation Aces Per Match 2020: ", std_dev_aces_per_match_2020, "\n")
std_dev_aces_per_match_2021 = sd(combined_data.m$aces_per_match_21, na.rm = TRUE)
cat("Standard Deviation Aces Per Match 2021: ", std_dev_aces_per_match_2021, "\n")

std_dev_aces_per_svc_g_2019 = sd(combined_data.m$aces_per_svc_g_19, na.rm = TRUE)
cat("Standard Deviation Aces Per Svc. Game 2019: ", std_dev_aces_per_svc_g_2019, "\n")
std_dev_aces_per_svc_g_2020 = sd(combined_data.m$aces_per_svc_g_20, na.rm = TRUE)
cat("Standard Deviation Aces Per Svc. Game 2020: ", std_dev_aces_per_svc_g_2020, "\n")
std_dev_aces_per_svc_g_2021 = sd(combined_data.m$aces_per_svc_g_21, na.rm = TRUE)
cat("Standard Deviation Aces Per Svc. Game 2021: ", std_dev_aces_per_svc_g_2021, "\n")

std_dev_dfs_per_match_2019 = sd(combined_data.m$dfs_per_match_19, na.rm = TRUE)
cat("Standard Deviation DFs Per Match 2019: ", std_dev_dfs_per_match_2019, "\n")
std_dev_dfs_per_match_2020 = sd(combined_data.m$dfs_per_match_20, na.rm = TRUE)
cat("Standard Deviation DFs Per Match 2020: ", std_dev_dfs_per_match_2020, "\n")
std_dev_dfs_per_match_2021 = sd(combined_data.m$dfs_per_match_21, na.rm = TRUE)
cat("Standard Deviation DFs Per Match 2021: ", std_dev_dfs_per_match_2021, "\n")

std_dev_dfs_per_svc_g_2019 = sd(combined_data.m$dfs_per_svc_g_19, na.rm = TRUE)
cat("Standard Deviation DFs Per Svc. Game 2019: ", std_dev_dfs_per_svc_g_2019, "\n")
std_dev_dfs_per_svc_g_2020 = sd(combined_data.m$dfs_per_svc_g_20, na.rm = TRUE)
cat("Standard Deviation DFs Per Svc. Game 2020: ", std_dev_dfs_per_svc_g_2020, "\n")
std_dev_dfs_per_svc_g_2021 = sd(combined_data.m$dfs_per_svc_g_21, na.rm = TRUE)
cat("Standard Deviation DFs Per Svc. Game 2021: ", std_dev_dfs_per_svc_g_2021, "\n")


##############################################################################

## plots ##

## plot combined data with filters ##
plot(combined_data.m$Year, combined_data.m$aces_per_match_19,
     ylim = c(min(combined_data.m$aces_per_match_19, na.rm = TRUE), max(combined_data.m$aces_per_match_19, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Match", main = "Aces per Match Across Years")

plot(combined_data.m$Year, combined_data.m$aces_per_match_20,
     ylim = c(min(combined_data.m$aces_per_match_20, na.rm = TRUE), max(combined_data.m$aces_per_match_20, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Match", main = "Aces per Match Across Years")

plot(combined_data.m$Year, combined_data.m$aces_per_match_21,
     ylim = c(min(combined_data.m$aces_per_match_21, na.rm = TRUE), max(combined_data.m$aces_per_match_21, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Match", main = "Aces per Match Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_match_19,
     ylim = c(min(combined_data.m$dfs_per_match_19, na.rm = TRUE), max(combined_data.m$dfs_per_match_19, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Match", main = "DFs per Match Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_match_20,
     ylim = c(min(combined_data.m$dfs_per_match_20, na.rm = TRUE), max(combined_data.m$dfs_per_match_20, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Match", main = "DFs per Match Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_match_21,
     ylim = c(min(combined_data.m$dfs_per_match_21, na.rm = TRUE), max(combined_data.m$dfs_per_match_21, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Match", main = "DFs per Match Across Years")


plot(combined_data.m$Year, combined_data.m$aces_per_svc_g_19,
     ylim = c(min(combined_data.m$aces_per_svc_g_19, na.rm = TRUE), max(combined_data.m$aces_per_svc_g_19, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Svc. Game", main = "Aces per Svc. Game Across Years")

plot(combined_data.m$Year, combined_data.m$aces_per_svc_g_20,
     ylim = c(min(combined_data.m$aces_per_svc_g_20, na.rm = TRUE), max(combined_data.m$aces_per_svc_g_20, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Svc. Game", main = "Aces per Svc. Game Across Years")

plot(combined_data.m$Year, combined_data.m$aces_per_svc_g_21,
     ylim = c(min(combined_data.m$aces_per_svc_g_21, na.rm = TRUE), max(combined_data.m$aces_per_svc_g_21, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Svc. Game", main = "Aces per Svc. Game Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_svc_g_19,
     ylim = c(min(combined_data.m$dfs_per_svc_g_19, na.rm = TRUE), max(combined_data.m$dfs_per_svc_g_19, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Svc. Game", main = "DFs per Svc. Game Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_svc_g_20,
     ylim = c(min(combined_data.m$dfs_per_svc_g_20, na.rm = TRUE), max(combined_data.m$dfs_per_svc_g_20, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Svc. Game", main = "DFs per Svc. Game Across Years")

plot(combined_data.m$Year, combined_data.m$dfs_per_svc_g_21,
     ylim = c(min(combined_data.m$dfs_per_svc_g_21, na.rm = TRUE), max(combined_data.m$dfs_per_svc_g_21, na.rm = TRUE)),
     xlim = c(min(combined_data.m$Year, na.rm = TRUE), max(combined_data.m$Year, na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Svc. Game", main = "DFs per Svc. Game Across Years")



## connect plots ##
plot(combined_data.m$Year, combined_data.m$aces_per_match_19, type = 'b', col = 'darkseagreen', pch = 19,
     ylim = c(min(combined_data.m[c("aces_per_match_19", "aces_per_match_20", "aces_per_match_21")], na.rm = TRUE),
              max(combined_data.m[c("aces_per_match_19", "aces_per_match_20", "aces_per_match_21")], na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Match", main = "Aces per Match Across Years", xaxt = 'n')

lines(combined_data.m$Year, combined_data.m$aces_per_match_20, type = 'b', col = 'indianred2', pch = 19)
lines(combined_data.m$Year, combined_data.m$aces_per_match_21, type = 'b', col = 'lightskyblue', pch = 19)

axis(1, at = unique(combined_data.m$Year), labels = unique(combined_data.m$Year))


plot(combined_data.m$Year, combined_data.m$aces_per_svc_g_19, type = 'b', col = 'darkseagreen', pch = 19,
     ylim = c(min(combined_data.m[c("aces_per_svc_g_19", "aces_per_svc_g_20", "aces_per_svc_g_21")], na.rm = TRUE),
              max(combined_data.m[c("aces_per_svc_g_19", "aces_per_svc_g_20", "aces_per_svc_g_21")], na.rm = TRUE)),
     xlab = "Year", ylab = "Aces per Svc- Game", main = "Aces per Svc. Game Across Years", xaxt = 'n')

lines(combined_data.m$Year, combined_data.m$aces_per_svc_g_20, type = 'b', col = 'indianred2', pch = 19)
lines(combined_data.m$Year, combined_data.m$aces_per_svc_g_21, type = 'b', col = 'lightskyblue', pch = 19)

axis(1, at = unique(combined_data.m$Year), labels = unique(combined_data.m$Year))


plot(combined_data.m$Year, combined_data.m$dfs_per_match_19, type = 'b', col = 'darkseagreen', pch = 19,
     ylim = c(min(combined_data.m[c("dfs_per_match_19", "dfs_per_match_20", "dfs_per_match_21")], na.rm = TRUE),
              max(combined_data.m[c("dfs_per_match_19", "dfs_per_match_20", "dfs_per_match_21")], na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Match", main = "DFs per Match Across Years", xaxt = 'n')

lines(combined_data.m$Year, combined_data.m$dfs_per_match_20, type = 'b', col = 'indianred2', pch = 19)
lines(combined_data.m$Year, combined_data.m$dfs_per_match_21, type = 'b', col = 'lightskyblue', pch = 19)

axis(1, at = unique(combined_data.m$Year), labels = unique(combined_data.m$Year))


plot(combined_data.m$Year, combined_data.m$dfs_per_svc_g_19, type = 'b', col = 'darkseagreen', pch = 19,
     ylim = c(min(combined_data.m[c("dfs_per_svc_g_19", "dfs_per_svc_g_20", "dfs_per_svc_g_21")], na.rm = TRUE),
              max(combined_data.m[c("dfs_per_svc_g_19", "dfs_per_svc_g_20", "dfs_per_svc_g_21")], na.rm = TRUE)),
     xlab = "Year", ylab = "DFs per Svc- Game", main = "DFs per Svc. Game Across Years", xaxt = 'n')

lines(combined_data.m$Year, combined_data.m$dfs_per_svc_g_20, type = 'b', col = 'indianred2', pch = 19)
lines(combined_data.m$Year, combined_data.m$dfs_per_svc_g_21, type = 'b', col = 'lightskyblue', pch = 19)

axis(1, at = unique(combined_data.m$Year), labels = unique(combined_data.m$Year))

######################################################################################################################
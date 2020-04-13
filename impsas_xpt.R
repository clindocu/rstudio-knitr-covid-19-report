#### Set R working directory
setwd("C:/Temp/Covid19/")
#### Use install.packages("knitr"), install.packages("foreign"), etc. if necessary
library(knitr)
library(foreign)
#### tidyverse: ggplot2, tibble, tidyr, readr, purrr, dplyr
library(tidyverse)
library(Hmisc)
library(xtable)
library(gridExtra)
library(survminer)
library(ggthemes)
library(reporttools)
library(texreg)
library(car)
library(RColorBrewer)
#### Read all .xpt files from working directory. Derive date/times. Set factor, levels, labels.
ALLDAYS <- read.xport("ALLDAYS.xpt")
ALLSTATE <- read.xport("ALLSTATE.xpt")
POPDATA <- read.xport("POPDATA.xpt")
TODAY <- read.xport("TODAY.xpt")
ALLDAYS$DATE <- as.Date(ALLDAYS$DATE, origin = "1960-01-01")
ALLSTATE$DATE <- as.Date(ALLSTATE$DATE, origin = "1960-01-01")
TODAY$BEG_DAT <- as.Date(TODAY$BEG_DAT, origin = "1960-01-01")
TODAY$DTH_DT <- as.Date(TODAY$DTH_DT, origin = "1960-01-01")
TODAY$DATE <- as.Date(TODAY$DATE, origin = "1960-01-01")
attr(ALLDAYS$STATE, "label") <- "State"
attr(ALLDAYS$DATE, "label") <- "Date"
attr(ALLDAYS$DAY, "label") <- "Day (>=1 case)"
attr(ALLDAYS$DAY100, "label") <- "Day (>=100 cases)"
attr(ALLDAYS$CONFIRM, "label") <- "Confirmed"
attr(ALLDAYS$DEATH, "label") <- "Death"
attr(ALLDAYS$RECOVER, "label") <- "Recovered"
attr(ALLDAYS$DTHPROC, "label") <- "Death per Confirmed (perc.)"
attr(ALLDAYS$COUNTRY, "label") <- "Country - Region"
attr(ALLDAYS$PROVINCE, "label") <- "Province - State"
attr(ALLSTATE$STATE, "label") <- "State"
attr(ALLSTATE$DAY, "label") <- "Day (>=1 case)"
attr(ALLSTATE$DAY100, "label") <- "Day (>=100 cases)"
attr(ALLSTATE$DAY1M, "label") <- "Day (>=1 cases per mio)"
attr(ALLSTATE$DAYDIS, "label") <- "Day (>=1 cases per mio) Active"
attr(ALLSTATE$DAY_DTH, "label") <- "Day (>=1 case fatal)"
attr(ALLSTATE$DATE, "label") <- "Date"
attr(ALLSTATE$CONF_MIO, "label") <- "Confirmed (per mio)"
attr(ALLSTATE$DIS_MIO, "label") <- "Active (per mio)"
attr(ALLSTATE$DTH_MIO, "label") <- "Death (per mio)"
attr(ALLSTATE$CONFIRM, "label") <- "Confirmed"
attr(ALLSTATE$DEATH, "label") <- "Death"
attr(ALLSTATE$RECOVER, "label") <- "Recovered"
attr(ALLSTATE$DISEASE, "label") <- "Active"
attr(ALLSTATE$CFR_PRC, "label") <- "Death per Confirmed (perc.)"
attr(ALLSTATE$POPUL, "label") <- "Population"
attr(POPDATA$COUNTRY, "label") <- "Countries and Territories"
attr(POPDATA$LOCATION, "label") <- "Location"
attr(POPDATA$POPYEAR, "label") <- "Population year"
attr(POPDATA$POPNO, "label") <- "Population"
attr(POPDATA$CONTIN, "label") <- "Continent"
attr(TODAY$STATE, "label") <- "State"
attr(TODAY$TODAY, "label") <- "Today"
attr(TODAY$BEG_DT, "label") <- "Date Begin (chr.)"
attr(TODAY$BEG_DAT, "label") <- "Date Begin"
attr(TODAY$T_DY, "label") <- "Day Covid"
attr(TODAY$DEATH_DY, "label") <- "Day 1st Death"
attr(TODAY$DTH_DT, "label") <- "Date 1st Death"
attr(TODAY$DAY, "label") <- "Day (>=1 case)"
attr(TODAY$DAY100, "label") <- "Day (>=100 cases)"
attr(TODAY$DAY1M, "label") <- "Day (>=1 cases per mio)"
attr(TODAY$DAYDIS, "label") <- "Day (>=1 cases per mio) Active"
attr(TODAY$DAY_DTH, "label") <- "Day (>=1 case fatal)"
attr(TODAY$DATE, "label") <- "Date"
attr(TODAY$CONF_MIO, "label") <- "Confirmed (per mio)"
attr(TODAY$DIS_MIO, "label") <- "Active (per mio)"
attr(TODAY$DTH_MIO, "label") <- "Death (per mio)"
attr(TODAY$CONFIRM, "label") <- "Confirmed"
attr(TODAY$DEATH, "label") <- "Death"
attr(TODAY$RECOVER, "label") <- "Recovered"
attr(TODAY$DISEASE, "label") <- "Active"
attr(TODAY$CFR_PRC, "label") <- "Death per Confirmed (perc.)"
attr(TODAY$POPUL, "label") <- "Population"
attr(TODAY$DEATH_DT, "label") <- "Date Death (day)"

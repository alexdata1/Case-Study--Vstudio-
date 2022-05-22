#install.packages("tidyverse")
#install.packages("here")
#install.packages("janitor")
#install.packages("geodist")

library(tidyverse)
library(dplyr)
library(ggplot2)
library(janitor)
library(lubridate)
library(here)
library(geodist)

#data_2021_05 <- read.csv(here("raw_data/202105-divvy-tripdata.csv"))
#data_2021_06 <- read.csv(here("raw_data/202106-divvy-tripdata.csv"))
#data_2021_07 <- read.csv(here("raw_data/202107-divvy-tripdata.csv"))
#data_2021_08 <- read.csv(here("raw_data/202108-divvy-tripdata.csv"))
#data_2021_09 <- read.csv(here("raw_data/202109-divvy-tripdata.csv"))
#data_2021_10 <- read.csv(here("raw_data/202110-divvy-tripdata.csv"))
#data_2021_11 <- read.csv(here("raw_data/202111-divvy-tripdata.csv"))
#data_2021_12 <- read.csv(here("raw_data/202112-divvy-tripdata.csv"))
#data_2022_01 <- read.csv(here("raw_data/202201-divvy-tripdata.csv"))
#data_2022_02 <- read.csv(here("raw_data/202202-divvy-tripdata.csv"))
#data_2022_03 <- read.csv(here("raw_data/202203-divvy-tripdata.csv"))
#data_2022_04 <- read.csv(here("raw_data/202204-divvy-tripdata.csv"))

#cyclistic_rides <- rbind(data_2021_05, data_2021_06, data_2021_07,
 #data_2021_08, data_2021_09, data_2021_10, data_2021_11, data_2021_12,
 #data_2022_01, data_2022_02, data_2022_03, data_2022_04)


#cyclistic_rides <- cyclistic_rides %>%
 #mutate(across(c(started_at, ended_at), ymd_hms)) %>%
 #mutate(ride_duration_mins = round(difftime(ended_at, started_at, units = "mins"))) %>%
 #mutate(hour_of_ride = hour(started_at)) %>%
 #mutate(time_of_day = case_when(am(started_at) ~ "a.m.", pm(started_at) ~ "p.m.", TRUE ~ "")) %>%
 #mutate(day_of_ride = wday(started_at, label = TRUE, abbr = FALSE)) %>%
 #mutate(month_of_ride = month(started_at, label = TRUE, abbr = FALSE)) %>%
 #mutate(ride_distance_km = round(
 #geodist::geodist_vec(x1 = start_lng, y1 = start_lat, x2 = end_lng, y2 = end_lat, paired = TRUE, measure = "haversine") / 1000, digits = 2))

#write.csv(cyclistic_rides, "cyclistic_rides.csv", row.names = FALSE)
#cyclistic_rides <- read.csv(here("cyclistic_rides.csv"))

#cyclistic_rides_cleaned <- cyclistic_rides %>% 
 #filter(across(c(start_lat, start_lng, end_lat, end_lng, started_at, ended_at), ~ !is.na(.))) %>%
 #filter(ride_duration_mins >= 2 & ride_duration_mins <= 240 & ride_distance_km <= 10 & ride_distance_km >= 0.1) %>%
 #filter(member_casual %in% c("member", "casual"))

#write.csv(cyclistic_rides_cleaned, "cyclistic_rides_cleaned.csv", row.names = FALSE)
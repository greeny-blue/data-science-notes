# loading dependencies
library(tidyverse)
library(ggplot2)
library(slider)
library(lubridate)

# loading data (all acquired from Radnar Gudmundsson's dashboard - https://lookerstudio.google.com/reporting/dfbcec47-7b01-400e-ab21-de8eb98c8f3a/page/p_70wiatllvd?s=up65eAX-um4)
casualties <- read.csv("data/Russian casualties.csv")
vehicles <- read.csv("data/Vehicles.csv")
special_equipment <- read.csv("data/Special equipment.csv")

# joining data and creating date column
dbd <- casualties %>% 
  left_join(vehicles, by = "Day") %>%
  left_join(special_equipment, by = c("Day" = "Date")) %>%
  mutate(Date = dmy(Day))

# tidying up data and summing vehicles and special equipment as "Vehicles_Special" column
dbd <- dbd %>% select(-c(Combat.engagements, Vehicles..7.day.average., Special.equipment..7.day.average., Day))
names(dbd) <- c("Casualties", "Vehicles", "Special", "Date")
dbd <- dbd %>% mutate (`Vehicles_Special` = Vehicles + `Special`)

# change date below to analyse data from a different start date
# the complete dataset contains some missing values
ANALYSIS_FROM_DATE <- "2025-01-01"

# filtering data to start on 1st Jan 2025
analysis_data <- dbd %>%
  filter(Date > as.Date(ANALYSIS_FROM_DATE))

# day the data were downloaded, and which the data extend to
max(analysis_data$Date)

# scatter plot of raw data
analysis_data %>%
  ggplot(aes(Casualties, Vehicles_Special)) +
  geom_smooth(method = "loess", col = "#2166AC", fill = "#2166AC") +
  geom_point(alpha = 0.8) +
  theme_bw() +
  theme(axis.title = element_text(size = 20),
        axis.text = element_text(size = 15),
        title = element_text(size = 25)) +
  labs(title = "Russian Battlefield Losses",
       x = "Personnel",
       y = "Vehicles + Special Equipment")

# time series of personnel and vehicle + special equipment losses
analysis_data %>%
  tidyr::pivot_longer(
    cols = c(Casualties, Vehicles_Special),
    names_to = "Type",
    values_to = "Count"
  ) %>%
  arrange(Type, Date) %>%
  group_by(Type) %>%
  mutate(
    rolling_mean = slider::slide_dbl(Count, mean, .before = 6, .complete = TRUE)
  ) %>%
  ggplot(aes(Date, Count, col = Type)) +
  geom_line(alpha = 0.5) +
  geom_line(aes(y = rolling_mean), linewidth = 1.2) +
  scale_color_manual(
    name = "Type",
    values = c(
      "Casualties" = "#B2182B",
      "Vehicles_Special"   = "#2166AC"
    ),
    labels = c(
      "Casualties" = "Personnel",
      "Vehicles_Special"   = "Vehicles + Special Equipment"
    )
  ) +
  theme_bw() +
  theme(
    axis.title = element_text(size = 20),
    axis.text = element_text(size = 15),
    plot.title = element_text(size = 25),
    legend.title = element_text(size = 20),
    legend.text = element_text(size = 15),
    legend.position = "top"
  ) +
  labs(
    title = "Russian Battlefield Losses",
    y = "Count",
    x = ""
  )

# correlation (spearman's)
cor.test(analysis_data$Casualties,
    analysis_data$Vehicles_Special,
    method = "spearman")

# counts of above and below average losses for personnel and vehicles + special equipment
analysis_data %>%
  mutate(
    Cas_level = ifelse(Casualties > median(Casualties), "High", "Low"),
    Veh_level = ifelse(Vehicles_Special > median(Vehicles_Special), "High", "Low")
  ) %>%
  count(Cas_level, Veh_level)

# chi-squared test
analysis_data %>%
  mutate(
    Cas_level = Casualties > median(Casualties),
    Veh_level = Vehicles_Special > median(Vehicles_Special)
  ) %>%
  with(chisq.test(table(Cas_level, Veh_level)))


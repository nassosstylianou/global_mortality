global.mortality.data.long.diabetes %>%
  ggplot() + geom_line(aes(x = year, y = percentage, group = country), colour = "grey") + geom_line(data = filter(global.mortality.data.long.diabetes, country == "Fiji"), aes(x = year, y = percentage), col = "blue")

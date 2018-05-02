global.mortality.data.long <- global.mortality.data %>%
  gather(key = disease, value = percentage, -c(1:3))
  
 
  
  
  
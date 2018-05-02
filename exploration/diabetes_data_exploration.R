global.mortality.data.long.diabetes <- global.mortality.data.long %>%
  filter(disease == "Diabetes (%)")

mortality.data.nested.by.country.diabetes <- 
  global.mortality.data.long.diabetes %>%
  nest(-country)

mortality.data.nested.by.country.diabetes$data[[1]]

mortality.data.diabetes.with.lm.model.by.country <- 
  mortality.data.nested.by.country.diabetes %>%
  mutate(model = map(data, ~lm(percentage ~ year, data = .))) %>%
  mutate(tidied = map(model, tidy)) %>%
  unnest(tidied)

mortality.data.diabetes.with.lm.model.by.country

# Filter for only the slope terms
filter(mortality.data.diabetes.with.lm.model.by.country, term == "year") %>% mutate(p.adjusted = p.adjust(p.value)) %>%
  filter(p.adjusted < 0.05) %>%
  arrange(desc(estimate))



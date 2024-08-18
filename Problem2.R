data <- read.csv('state_health_insurance_coverade_2021')
head(data)

install.packages("plotly")
library(plotly)
data <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/2014_apple_stock.csv')
fig <- plot_ly(x = as.Date(data$AAPL_x), y = data$AAPL_y, type = 'scatter', mode = 'lines'
               , name = 'Share Prices (in USD)')%>% 
  layout(title = 'Apple Share Prices over time (2014)',
         plot_bgcolor='#e5ecf6',  
         xaxis = list(  
           title = 'AAPL_x',
           zerolinecolor = '#ffff',  
           zerolinewidth = 2,  
           gridcolor = 'ffff'),  
         yaxis = list(  
           title = 'AAPL_y',
           zerolinecolor = '#ffff',  
           zerolinewidth = 2,  
           gridcolor = 'ffff'),
         showlegend = TRUE, width = 1100)
fig

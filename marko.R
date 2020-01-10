library(gdata)
# load gdata package 
setwd("/home/alex/ECONOMICS/IAE/OLGA_KOZAK/2019_AIDS/okozak")
mydata = read.xls("7.xls")  # read from first sheet
library(micEcon)
library(micEconAids)
priceNames <- c( "p_bread","p_meat","p_fish","p_milk_cheese", "p_butter", "p_oil", "p_sugar")
shareNames <- c( "w_bread","w_meat","w_fish","w_milk_cheese", "w_butter", "w_oil", "w_sugar")
## LA-AIDS
estResult <- aidsEst( priceNames, shareNames, "xfood", data = mydata)
print( estResult )
elas( estResult )
summary(estResult )
lrtest(estResult,estResult)
checkConsist( estResult )

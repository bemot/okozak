library(gdata)   
# load gdata package
setwd("/home/sasha/ECONOMICS/IAE/OLGA_KOZAK/2019_AIDS/okozak/")
#newdata = read.xls("13.xls")  # read from first sheet
library(micEcon)
library(micEconAids)
priceNames <- c( "p_bread","p_meat","p_fish","p_milk","p_eggs","p_fat")
shareNames <- c( "w_bread","w_meat","w_fish","w_milk","w_eggs","w_fat")
## LA-AIDS
estResult <- aidsEst( priceNames, shareNames, "xfood", data=newdata)
print( estResult )
elas( estResult )
summary(estResult )
lrtest(estResult,estResult)
checkConsist( estResult )




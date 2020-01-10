library(gdata)   
# load gdata package
setwd("/home/alex/ECONOMICS/IAE/OLGA_KOZAK/2019_AIDS/okozak")
#newdata = read.xls("13.xls")  # read from first sheet
newdata <- read.csv(file="fruits_noalko.csv", header=TRUE, sep=";")
library(micEcon)
library(micEconAids)
priceNames <- c( "p_bread","p_meat","p_fish","p_milk","p_eggs","p_fat","p_butter", "p_oil")
shareNames <- c( "w_bread","w_meat","w_fish","w_milk","w_eggs","w_fat","w_butter", "w_oil")

## LA-AIDS
estResult <- aidsEst( priceNames, shareNames, "xfood", data=newdata)
print( estResult )
elas( estResult )
summary(estResult )
lrtest(estResult,estResult)
checkConsist( estResult )

#priceNames <- c( "p_bread","p_meat","p_fish","p_milk","p_eggs","p_fat","p_butter", "p_oil","p_fruits","p_veg","p_potato", "p_sugar","p_noalko")
#shareNames <- c( "w_bread","w_meat","w_fish","w_milk","w_eggs","w_fat","w_butter", "w_oil","w_fruits","w_veg","w_potato", "w_sugar","w_noalko")

#w_bread;w_meat;w_fish;w_milk;w_eggs;w_fat;w_butter;w_oil;p_bread;p_meat;p_fish;p_milk;p_eggs;p_fat;p_butter;p_oil

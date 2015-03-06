library(MASS)
library(ggplot2)
?Cars93
ggplot(data=Cars93,aes(x=Weight,y=Horsepower,color=DriveTrain))+
  geom_point()+
  stat_smooth(se=FALSE)

ggplot(data=Cars93,aes(x=Weight,y=Horsepower,color=DriveTrain))+
  geom_point()+#plots points
  stat_smooth()#has confidience level and line of fit

ggplot(data=Cars93,aes(x=Weight,y=Horsepower))+
  geom_point()+
  stat_smooth()

ggplot(data=Cars93,aes(x=Weight,y=Horsepower,color=DriveTrain))+
  geom_point()+
  stat_smooth(method="lm",se=FALSE)+
  facet_grid(Origin~AirBags)#gives grids based on origin
                            #and where airbags are
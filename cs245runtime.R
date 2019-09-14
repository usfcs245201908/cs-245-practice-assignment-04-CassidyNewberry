library(tidyverse)
library(magrittr) 
library(scales) 

x<-c(50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000) 
bubble<-c(5890, 23376, 46279, 83755, 135016, 184966, 247047, 321072,399316, 467266 )
insertion<-c(400, 1355, 3632, 6168, 9856, 14708, 19124, 26086, 29868, 38981)
selection<-c(905, 3667, 8500, 15839, 27316, 32926, 47228, 59687, 80288, 89968)

sort <- data.frame("Size of Array"=x, "Bubble Runtime"= bubble, "Insertion Runtime"= insertion, "Selection Runtime"= selection)

sort %>% 
  ggplot()+
    geom_line(aes(x=Size.of.Array, y=Bubble.Runtime), color="red")+
      geom_line(aes(x=Size.of.Array, y=Insertion.Runtime), color="dodgerblue")+
        geom_line(aes(x=Size.of.Array, y=Selection.Runtime), color="yellow")+
            scale_x_continuous(name= "Size of Array", labels=comma)+
              scale_y_continuous(name="Time (ms)", labels=comma)+
                ggtitle("Figure 1: Graph of run timing")+
                  theme(plot.title = element_text(hjust = 0.5))+
                   geom_text(x=450000, y=390000, label="Bubble Sort", color="red")+
                      geom_text(x=450000, y=90000, label="Selection Sort", color="yellow")+
                        geom_text(x=450000, y=40000, label="Insertion Sort", color="dodgerblue")


ggsave("SortingRuntime.pdf")                    
          
    
      

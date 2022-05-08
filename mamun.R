mamun=tibble(genome=c("A","B","C"),n=c(1,3,5))
khan=tibble(genome=c("A","D","C"),nr=c(2,4,6))
inner_join(mamun,khan)
right_join(mamun,khan)
right_join(khan,mamun)
 left_join(mamun,khan)
 
 
 getwd()
 setwd("C:/Users/Mamun/OneDrive/Desktop/lab")
 k=read.csv('covid.csv')
head(k)
str(k)
attach(k)
e=as.Date(k$Date,"%d/%m/%Y")
k$Date=e
 ggplot(k,aes(x=Date,y=Covid))+geom_point(col="red")+geom_path(col="red",size=0.5) +
  # geom_smooth()+
   scale_y_continuous(breaks = seq(230,1050,by=15))+
   scale_x_date(breaks = date_breaks(width = "2 day"))+
  # theme_ipsum()
   theme(axis.text.x = element_text(angle=45,size=10,colour = "blue"))+
   theme_bw(base_size = 18,base_line_size = 10/22,base_rect_size = 1)+
   #theme(panel.grid.major = element_line(colour = "black",size = 0.4))+
   
   
getwd()
setwd("D:/Preenon bhai/all data") 
c=read.csv("mamun.csv")
attach(c)
str(c)
head(c)
x=as.Date(c$date,"%m/%d/%Y")
c$date=x
ggplot(c,aes(x=date,y=chl))+geom_point(aes(col=station))+geom_line(aes(col=station))+scale_y_continuous(breaks = seq(0.2,10,by=0.5))
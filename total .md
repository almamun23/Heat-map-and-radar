t=read.csv("E:/R/Azone.csv") 
attach(t)
head(t)

b= t %>% pivot_longer(cols = c(Erosion,Accretion),names_to = "type",values_to = "value")
head(b)

e=ggplot(b,aes(x=Year,y=value,fill=type))+geom_bar(stat = "identity",position ="dodge")+theme_classic()+
  theme(axis.text.y = element_text(size=12.5,colour = "black",face = "bold"),axis.title =element_text(size=20,face="bold"))+coord_flip()+scale_y_continuous(breaks = seq(0,50,by=3.5))+
  theme(axis.text.x = element_text(size=12.5,colour = "black",face = "bold"))+ 
  theme(legend.title =element_blank(),legend.text = element_text(size = 15,face = "bold"),legend.position ="bottom")
 e+scale_fill_discrete(labels=c(bquote("Accretion" (Km^2)),bquote("Erosion" (Km^2))))+
   ylab(bquote("Area" (Km^2)))+scale_fill_manual(values = c(" red","green"))
   
 
ggplot(b,aes(x=Year,y=value,group=type))+geom_line(aes(color=type))
 

 
 t1=read.csv("E:/R/Bzone.csv") 
 attach(t1)
 head(t1)
 b1= t1 %>% pivot_longer(cols = c(Erosion,Accretion),names_to = "type",values_to = "value")
 head(b1)
 max(b1$value)
 
 e2=ggplot(b1,aes(x=Year,y=value,fill=type))+geom_bar(stat = "identity",position ="dodge")+theme_classic(base_size = 10)+
   theme(axis.text.y = element_text(size=12.5,colour = "black",face = "bold"),axis.title =element_text(size=20,face="bold"))+coord_flip()+scale_y_continuous(breaks = seq(0,20,by=2.5))+
   theme(axis.text.x = element_text(size=12.5,colour = "black",face = "bold"))+ 
   theme(legend.title =element_blank(),legend.text = element_text(size = 15,face = "bold"),legend.position ="bottom")
 e2+scale_fill_discrete(labels=c(bquote("Accretion" (Km^2)),bquote("Erosion" (Km^2))))+
   ylab(bquote("Area" (Km^2)))+scale_fill_manual(values = c("blue","green"))  
 
 e2+theme_classic()
 e2+theme(panel.background = element_rect(fill = "white"),
          panel.grid = element_blank(),
          axis.line = element_line(colour = "black"))
 x=ggplot(b1,aes(x=Year,y=value,fill=type))+geom_bar(stat = "identity",position ="dodge")
x+theme(line = element_line(size = 0.25),
         panel.background = element_rect(fill = "gray50"),
         panel.grid = element_line(colour = "gray40"),
  legend.key = element_rect(fill="gray50", color=NA))
x+theme(
  text = element_text(size=12),
  plot.title=element_text(face="bold", size=18),
  plot.margin = unit(c(1, 1, 1, 1), unit="lines"),
  plot.background = element_rect(fill="gray95", color=NA),
  panel.background = element_blank(),
  axis.title = element_blank(),
  panel.grid = element_line(color="gray80"),
  panel.grid.minor = element_blank(),
  axis.ticks = element_blank(),
  legend.position = "bottom",
  legend.background = element_blank(),
  legend.key = element_blank()
)

x+theme_fivethirtyeight()

x+theme(
  plot.background = element_rect(fill = "gray95"),
  panel.background = element_blank(),
  axis.title = element_blank( ),
  panel.grid = element_line(colour =80),
  axis.ticks = element_blank(),
  panel.grid.minor = element_blank(),
  legend.position = "bottom",
  legend.background = element_blank(),
  legend.key = element_blank()
) 

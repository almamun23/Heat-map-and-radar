getwd()
setwd("E:/Kuakata/Salinity")
x=read.csv("ok.csv")
ggradar(x
  , 
  values.radar = c("5", "20", "27"),
  grid.min = 5, grid.mid = 20, grid.max = 27,
  # Polygons
  group.line.width = 1, 
  group.point.size = 3,
  group.colours = c("#00AFBB", "#E7B800", "#FC4E07"),
  # Background and grid lines
  background.circle.colour = "white",
  gridline.mid.colour = "grey",
  legend.position = "bottom"
)
getwd()
setwd("E:/Kuakata/Salinity")
x=read.csv("ok.csv")
attach(x)

getwd()
setwd("E:/Kuakata/Salinity")
x1=read.csv("DO.csv")
attach(x1)
 ggplot(x1,aes(x=Station,y=DO))+geom_point()+geom_path()+
   scale_x_continuous(breaks = seq(1,10,by=1))+
   labs(y="DO(mg/L)", x="Station")+
   scale_y_continuous(breaks = seq(5,7,by=0.3))+
   theme_bw()
 x2=data.matrix(x)
 rownames(x2)=x$Station
 x2=x2[,-1]
 pheatmap(x2,scale = "column",cluster_rows = F,cluster_cols = F,border_color ="green" )
 
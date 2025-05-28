listclim<-list()
listclim[[11]]<-"11_late_holocene/bio_"
xtt<-rast(x = "1_pliocene_m2/bio_1.tif")
x4
for(j in av){
  for(i in 1:10){
  x1<-resample(rast(paste0(listclim[[i]],j,".tif")),xtt)
  x2<-resample(rast(paste0(listclim[[i+1]],j,".tif")),xtt)
  delta<-abs(x2-x1)
  assign(paste0("delta",i),delta)
}
writeRaster(assign(paste0("instab",j),mean(delta1,delta2,delta3,delta4,delta5,delta6,delta7,delta8,delta9,delta10)),paste0("instability_",j,".tif"))
}
instab12
plot(instab12)

writeRaster(instab1,"instability_temp.tif")
writeRaster(instab12,"instability_prep.tif")

av<-c(1,4,8,9,10,11,12:19)

length(av)

save.image(file="Instability_maps.RData")

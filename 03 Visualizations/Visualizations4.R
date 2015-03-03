categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from CITIESTOCITIES"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mh33483', PASS='orcl_mh33483', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

myplot <- function(df, x) {
  names(df) <- c("x", "n")
  ggplot(df, aes(x=x, y=n)) + geom_point()
}

l <- list()

for (i in names(flightcitiesdf)) { 
  if (i %in% categoricals[[1]]) {
    r <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from CITIESTOCITIES group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL',USER='C##cs329e_mh33483',PASS='orcl_mh33483',MODE='native_mode',MODEL='model',returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    p <- myplot(r,i)
    l[[i]] <- p
  }
}

png("C:/Users/Michael/Documents/DataVisualization/DV_RProject3/00 Doc/categoricals.png", width = 16, height = 16, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 2)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
print(l[[3]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(l[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 2))

dev.off()

myplot2 <- function(df, x) {
  names(df) <- c("x")
  ggplot(df, aes(x=x)) + geom_histogram()
}

l <- list()

for (i in names(flightcitiesdf)) {   
  if (i %in% categoricals[[2]]) {
    r <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\" from CITIESTOCITIES where \\\""i"\\\" is not null "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL',USER='C##cs329e_mh33483',PASS='orcl_mh33483',MODE='native_mode',MODEL='model',returnDimensions = 'False',returnFor = 'JSON', i=i),verbose = TRUE)))
    p <- myplot2(r,i)
    l[[i]] <- p
  }
}

png("C:/Users/Michael/Documents/DataVisualization/DV_RProject3/00 Doc/categoricals2.png", width = 24, height = 16, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 3)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 2))
print(l[[3]], vp = viewport(layout.pos.row = 1, layout.pos.col = 3))
print(l[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1))
print(l[[5]], vp = viewport(layout.pos.row = 2, layout.pos.col = 2))
print(l[[6]], vp = viewport(layout.pos.row = 2, layout.pos.col = 3))

dev.off()

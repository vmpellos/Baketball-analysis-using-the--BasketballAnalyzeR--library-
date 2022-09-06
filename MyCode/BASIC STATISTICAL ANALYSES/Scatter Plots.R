# 2.2.4 SCATTER PLOTS

library(BasketballAnalyzeR)

# Scatter plot 1
# Choose all players played >500 minutes
Pbox.sel <- subset(Pbox, MIN>= 500)
attach(Pbox.sel)
X <- data.frame(AST, TOV, PTS)/MIN
detach(Pbox.sel)

# Create a palette 
mypal <- colorRampPalette(c("blue","yellow","red"))

# Create a scatter plot (every player as a number)
scatterplot(X, data.var=c("AST","TOV"), z.var="PTS",
            labels=1:nrow(X), palette=mypal)



# Scatter plot 2
# Choose san antonio players
SAS <- which(Pbox.sel$Team=="San Antonio Spurs")

# Create a scatterplot (using the palette i created above)
scatterplot(X, data.var=c("AST","TOV"), z.var="PTS",
            labels=Pbox.sel$Player, palette=mypal,
            subset=SAS)


# Scatter plot 3
# Create the same scatterplot as previously but this time I zoom
SAS <- which(Pbox.sel$Team=="San Antonio Spurs")
scatterplot(X, data.var=c("AST","TOV"), z.var="PTS",
            labels=Pbox.sel$Player, palette=mypal,
            subset=SAS, zoom=c(0.,0.2,0,0.10))
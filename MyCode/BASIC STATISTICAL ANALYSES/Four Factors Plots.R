# FOUR FACTORS

library(BasketballAnalyzeR)

# Analyze four teams
PbP <- PbPmanipulation(PbP.BDB)
tm <- c("BOS","CLE","GSW","HOU")
selTeams <- which(Tadd$team %in% tm)
FF_sel <- fourfactors(Tbox[selTeams,], Obox[selTeams,])
plot(FF_sel)


# Analyze all teams
FF <- fourfactors(Tbox,Obox)
listPlots <- plot(FF)
plot(FF)


# Plot separately
library(gridExtra)
grid.arrange(grobs = listPlots[1:2], ncol=2)
grid.arrange(grobs = listPlots[3], ncol=1)
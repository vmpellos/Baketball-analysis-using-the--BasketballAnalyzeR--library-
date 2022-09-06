# 2.2.2 BAR-LINE PLOTS
library(BasketballAnalyzeR)
#FIRST PLOT
#Add in the Tbox table 3 extra cols (PTS.O,TOV.O,CONF)
X <- data.frame(Tbox,PTS.O=Obox$PTS, TOV.0=Obox$TOV,
                CONF=Tadd$Conference) 

#Choose 15 teams of the west conference (west)
XW <- subset(X,CONF=="W")

# Create a barline plot
labs <- c("Steals","Blocks","Defensive Rebounds")
barline(data=XW, id="Team", bars = c("STL","BLK","DREB"),
        line = "TOV.0", order.by = "PTS.O", labels.bars = labs)



#SECOND PLOT
# Select those huston players who played >500 minutes
Pbox.HR <- subset(Pbox, Team =="Houston Rockets" & MIN>=500)

# Create a barline plot
barline(data = Pbox.HR, id="Player",bars = c("P2p","P3p","FTp"),
        line="MIN",order.by = "PM",labels.bars = c("2P%","3P%","FT%"),
        title="Houston Rockets Offensive Stats")


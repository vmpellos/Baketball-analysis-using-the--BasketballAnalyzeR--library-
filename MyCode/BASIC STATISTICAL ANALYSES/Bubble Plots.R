#####################
# 2.2.5 Bubble plots
#####################
library(BasketballAnalyzeR)

# Select Features from Tbox table (teams bubble plot)
attach(Tbox)
X <- data.frame(T=Team, P2p, P3p, FTp, AS=P2A+P3A+FTA) #AS = attempted shots
detach(Tbox)

# Create bubble plot
labs <- c("2-point shots (% made)",
          "3-point shots (% made)",
          "free throws (% made)",
          "Total shots attempted")
bubbleplot(X, id="T", x="P2p", y="P3p", col="FTp",
           size="AS", labels=labs)


# Select Players from warriors and cavs from Tbox table (players bubble plot)
Pbox.GSW.CC <- subset(Pbox,
                      (Team=="Golden State Warriors" |
                         Team =="Cleveland Cavaliers") &
                        MIN>=500)

# Select Features from Pbox.GSW.CC table 
attach(Pbox.GSW.CC)
X <- data.frame(ID=Player, Team, V1=DREB/MIN, V2=STL/MIN,
                V3=BLK/MIN, V4=MIN)
detach(Pbox.GSW.CC)

# Create bubble plot
labs <- c("Defensive Rebounds","Steals","Blocks",
          "Total minutes played")
bubbleplot(X, id="ID", x="V1", y="V2", col="V3",
           size="V4", text.col="Team", labels=labs,
           title="GSW and CC during the regular season",
           text.legend=TRUE, text.size=3.5, scale=FALSE)

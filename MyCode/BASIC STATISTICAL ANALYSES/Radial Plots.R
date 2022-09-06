# 2.2.3 RADIAL PLOTS

library(BasketballAnalyzeR)

# Select point guards 
Pbox.PG <- subset(Pbox, Player=="Russell Westbrook" |
                    Player=="Stephen Curry" |
                    Player=="Chris Paul" |
                    Player=="Kyrie Irving" |
                    Player=="Damian Lillard" |
                    Player=="Kyle Lowry" |
                    Player=="John Wall" |
                    Player=="Rajon Rondo" |
                    Player=="Kemba Walker")


# Start working with Pbox.PG
attach(Pbox.PG)

# Choose the stats I want (from Pbox.PG)
X <- data.frame(P2M, P3M, FTM, REB=OREB+DREB, AST,
                STL, BLK)/MIN

# Stop working with Pboc.PG
detach(Pbox.PG)

# Create radial plot (std=false)
radialprofile(data=X, title=Pbox.PG$Player, std=FALSE)

# Create rad?al plot (std=true) (????????????????!)
radialprofile(data=X, title=Pbox.PG$Player, std=TRUE)  
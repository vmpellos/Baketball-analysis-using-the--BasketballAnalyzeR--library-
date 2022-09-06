######################
# 2.2.6 Variability analysis
######################
library(BasketballAnalyzeR)

#Select data
Pbox.OKC <- subset(Pbox, Team=="Oklahoma City Thunder"
                   & MIN>=500)

# Variability statistics for 3 points shots
vrb1 <- variability(data=Pbox.OKC, data.var="P3p",
                    size.var="P3A")

# weighted variability statistics for 3 points shots
vrb1 <- variability(data=Pbox.OKC, data.var="P3p",
                    size.var="P3A",weight=TRUE)

# weighted variability statistics for FT, 2 & 3 points shots
vrb2 <- variability(data=Pbox.OKC,
                    data.var=c("P2p","P3p","FTp"),
                    size.var=c("P2A","P3A","FTA"),
                    weight=TRUE)

# Plot a variability diagram for vrb1
plot(vrb2, title="Variability diagram - OKC")

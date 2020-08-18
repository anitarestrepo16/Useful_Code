# IN PROGRESS -- NEED TO CLEAN UP AND RUN TO VERIFY

### Venn Diagrams to see how many participants in multiple subsamples overlap for each

#find overlap between dataframes
nrow(table(intersect(Logistic_Regression$ID, linear_Regression$ID)))
nrow(table(intersect(Logistic_Regression$ID, Logistic_Regression_with_CIS$ID)))
nrow(table(intersect(linear_Regression$ID, Logistic_Regression_with_CIS$ID)))
nrow(table(Reduce(intersect, list(Logistic_Regression$ID, linear_Regression$ID, Logistic_Regression_with_CIS$ID))))

#Venn Diagram for sample size overlaps
library(VennDiagram)
pdf(file="Samples_Venn.pdf", width = 100, height = 100)
grid.newpage()
draw.triple.venn(area1 = 1009, area2 = 830, area3 = 893, n12 = 830, n23 = 718, n13 = 893, 
                 n123 = 718, category = c("Categorical Regression/\nOdds Ratios\n(N = 1009)\n", "Impairment Regressions\n(N = 830)\n", 
                                          "Dimensional Regression\n(N = 893)\n"), lty = "solid", 
                 fill = c("skyblue", "pink1", "mediumorchid"), col = c("skyblue", "pink1", "mediumorchid"),
                 cex = 20, cat.cex = 20, cat.col = (c("skyblue", "pink1", "mediumorchid")), 
                 cat.pos = c(340, 0, 20), cat.dist = c(0.03, 0.04, -0.04))
dev.off()

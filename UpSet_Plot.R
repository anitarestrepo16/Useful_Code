### NEEDS MORE DOCUMENTATION PLUS MAKING IT INTO GENERAL USE TEMPLATE


library(UpSetR)

#simple upset plot as pdf
pdf(file="Upset.pdf", width = 320, height = 80, paper = "USr")
upset(all_Dxs, sets = c("ASD", "Learning_Disorder", "Anxiety", "Depression",
                               "ADHD_Combined", "ADHD_Inattentive", "ADHD_Hyperactive", "No_Dx", "Other_Dx"), 
      sets.bar.color = "#56B4E9",
      order.by = "freq", empty.intersections = "on", 
      text.scale = 1.5, keep.order = TRUE)
dev.off()

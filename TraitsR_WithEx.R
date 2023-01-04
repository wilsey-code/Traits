#PCA on trait data from Kaul and Wilsey (2021)
#clear
rm(list = ls())

#testing
1+1
2*4
3/8
x <- seq(1, 10, 0.5)
y <- seq(101, 110, 0.5)

rnorm(10, mean=0, sd = 1 )

#Exercise plotting.

var <- get_pca_var(traits.pr)
fviz_pca_var(traits.pr, col.var = "black")



View(PCA_Exotics)
PCA_Exotics <- read.delim("C:/Users/bwilsey/Desktop/PCA_Exotics.csv")
features <- c("pexotic", "Site", "Height", "LDMC", "SLA")
View(PCA_Exotics)
names(PCA_Exotics)
head(PCA_Exotics)
dim(PCA_Exotics)
str(PCA_Exotics)

traits.pr <- prcomp(PCA_Exotics[c(3:5)], center = TRUE, scale = TRUE)
summary(traits.pr)

library(factoextra)
fviz_pca_ind(traits.pr, 
             fill.ind = PCA_Exotics$pexotic,
             col.ind = "black",
             palette ="jcoe",
             addEllipses = FALSE,
             label = "var",
             col.var ="black",
             repel = TRUE,
             legend.title = "pexotic") + 
  ggtitle("2D PCA-plot") +
  theme(plot.title = element_text(hjust = 0.5))

fviz_pca_biplot(traits.pr, geom.ind = "point", pointshape = 21, 
                pointsize = 2,
                fill.ind = PCA_Exotics$pexotic,
                col.ind = "black",
                palette ="jcoe",
                addEllipses = FALSE,
                label = "var",
                col.var ="black",
                repel = TRUE,
                legend.title = "pexotic") + 
  ggtitle("2D PCA-plot") +
  theme(plot.title = element_text(hjust = 0.5))

fviz_pca_biplot(traits.pr, geom.ind = "point", pointshape = 21, 
                pointsize = 2,
                fill.ind = PCA_Exotics$pexotic,
                col.ind = "black",
                palette ="jcoe",
                addEllipses = FALSE,
                label = "var",
                col.var ="black",
                repel = TRUE,
                legend.title = "pexotic") + 
  ggtitle("2D PCA-plot") +
  theme(plot.title = element_text(hjust = 0.5))


 

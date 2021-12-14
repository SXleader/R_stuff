library(clusterProfiler)
library(enrichplot)

## geneList for GSEA examples
data(geneList, package="DOSE")

## fold change > 2 as DE genes, for ORA examples
de <- names(geneList)[abs(geneList) > 2]

ego <- enrichGO(de, OrgDb = "org.Hs.eg.db", ont="BP", readable=TRUE)

## visualization
ego <- pairwise_termsim(ego)
p1 <- emapplot(ego, cex_label_category=.8, cex_line=.5) +
	scale_fill_continuous(low = "#e06663", high = "#327eba", name = "p.adjust",
			      guide = guide_colorbar(reverse = TRUE, order=1), trans="log10")

## use simplify to remove redundant terms
ego2 <- simplify(ego, cutoff=0.7, by="p.adjust", select_fun=min)

## visualization
ego2 <- pairwise_termsim(ego2)

p2 <- emapplot(ego2, cex_label_category=.8, cex_line=.5) +
	scale_fill_continuous(low= "#e06663", high = "#3237eba", name= "p.adjust",
			      guide = guide_colorbar(reverse=TRUE, order=1), trans="log10")

## https://mp.weixin.qq.com/s/ZrLSnpBCEuhjDC2X97PwQg

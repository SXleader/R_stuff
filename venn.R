library(VennDiagram)
library(RColorBrewer)
args=commandArgs(T)
# setwd("/cygene2/work/P0000-Blackbird/2103-BL001/BL001004/BL14_WES_PTTU_CL1/BL14_TU_CL1-P4-gDNA_hg38")
# args = c("BL14-TU.gene.id", "TU_CL1.gene.id", "PT_CL1.gene.id")
args_length = length(args)
if ( args_length == 2 ){
	A = scan(args[1], what=character(0))
	B = scan(args[2], what=character(0))
	print("2 files")
	file_name1 = unlist(strsplit(basename(args[1]),"\\."))[1]
	file_name2 = unlist(strsplit(basename(args[2]),"\\."))[1]
	
	venn.diagram(list(A=A, A=B), 
	     disable.logging = TRUE,
	     resolution = 300, imagetype = "png", 
	     col = RColorBrewer::brewer.pal(7, "Dark2")[1:2], 
	     cex = 4, # size
	     label.col=c("black"),
	     lwd = 4, 
	     lty = 1,
	     
		 # for category:
	     cat.fontface="bold", # font type.
	     category.names = c(file_name1,file_name2),
	     cat.cex = 3.5,
	     cat.pos = c(0,0), # 防止文字侧漏，超出边框
	     # fill = c("blue","red"), # no fill is more beautiful.
	     cat.col = RColorBrewer::brewer.pal(7, "Dark2")[1:2],
	     area.vector = TRUE,
	     # sigdigs = "percent",
	     # hyper.test = TRUE,total.population = 80,
	     
		 # for main title:
	     main="", main.cex = 2,main.col = "black", main.fontface=2, 
	     sub.fontfamily = "serif", main.just = 0,
	     
		 # for subtitle:
	     sub = "", sub.cex = 4, sub.col = "black", sub.fontface = 2,
	     filename = "VennDiagram.pairwise.png")
	print("Output graph : VennDiagram.pairwise.png")

}else if ( args_length == 3 ){
	A = scan(args[1],what="c")
	B = scan(args[2],what="c")
	C = scan(args[3],what="c")
	print("3 files")
	file_name1 = unlist(strsplit(basename(args[1]),"\\."))[1]
	file_name2 = unlist(strsplit(basename(args[2]),"\\."))[1]
	file_name3 = unlist(strsplit(basename(args[3]),"\\."))[1]
	
	venn.diagram(list(A=A,B=B,C=C),
	             resolution = 300, imagetype = "png",
	             disable.logging = TRUE,
	             # for circle:
	             col = RColorBrewer::brewer.pal(7, "Dark2")[1:3],
	             # fill = RColorBrewer::brewer.pal(7,"Dark2")[1:3],
	             
	             label.col=c("black"), # label 颜色，默认黑色
	             cex = 2, # label 字体大小
	             
	             # for category:
	             cat.fontface=10, # font type.
	             category.names = c(file_name1, file_name2, file_name3),
	             cat.cex = 2,
	             cat.pos = c(0,0,0),
	             cat.col = RColorBrewer::brewer.pal(7, "Dark2")[1:3],
	             area.vector = TRUE,
	             alpha = 1,# 透明度
	             
	             # for main title:
	             main="", main.cex = 4,main.col = "blue", main.fontface=2,
	             sub.fontfamily = "serif", main.just = 0,
	             
	             # for subtitle:
	             sub = "", sub.cex = 2, sub.col = "red", sub.fontface = 8,
	             filename = "VennDiagram.triple.png")
	print("Output graph : VennDiagram.triple.png")

}else if ( args_length == 4 ){
	A = scan(args[1],what="c")
	B = scan(args[2],what="c")
	C = scan(args[3],what="c")
	D = scan(args[4],what="c")
	print("4 files")
	file_name1 = unlist(strsplit(basename(args[1]),"\\."))[1]
	file_name2 = unlist(strsplit(basename(args[2]),"\\."))[1]
	file_name3 = unlist(strsplit(basename(args[3]),"\\."))[1]
	file_name4 = unlist(strsplit(basename(args[4]),"\\."))[1]

	venn.diagram(list(A=A, B=B,C=C,D=D),
	     resolution = 300, imagetype = "png", 
		 disable.logging = TRUE,
	     cat.fontface=4, fontfamily=3,
	     category.names = c(file_name1,file_name2,file_name3,file_name4),
		 cat.cex = 2,
	     cat.pos = c(0,0,0,0), # 防止文字侧漏，超出边框
	     lty = "dashed",
	     # fill = c("orange", "red", "green", "blue"),
	     cat.col = c("orange", "red", "green", "blue"),
		 
		 # for main title:
	   main="", main.cex = 3,main.col = "black", main.fontface=2, 
		 main.fontfamily="serif", main.just = 0,
		 
		 # for subtitle:
		 sub = "", sub.cex = 2, sub.pos = c(0),sub.fontface = 2,
		 sub.fontfamily = "serif", sub.col = "red",sub.just = 90,
	   filename = "VennDiagram.quad.png")
	print("Output graph : VennDiagram.quad.png")

}else if ( args_length == 5 ){
	A = scan(args[1], what="c")
	B = scan(args[2], what="c")
	C = scan(args[3], what="c")
	D = scan(args[4], what="c")
	E = scan(args[5], what="c")
	print("5 files")
	file_name1 = unlist(strsplit(basename(args[1]), "\\."))[1]
	file_name2 = unlist(strsplit(basename(args[2]), "\\."))[1]
	file_name3 = unlist(strsplit(basename(args[3]), "\\."))[1]
	file_name4 = unlist(strsplit(basename(args[4]), "\\."))[1]
	file_name5 = unlist(strsplit(basename(args[5]), "\\."))[1]
	
	venn.diagram(list(A=A, B=B, C=C, D=D, E=E),
	     resolution = 300, imagetype = "png",
		 disable.logging = TRUE,
	     cat.fontface=4, fontfamily=3,
	     category.names = c(file_name1,file_name2,file_name3,file_name4,file_name5),
		 cat.cex = 3.5,
	     cat.pos = c(0,0,0,0,0), # 防止文字侧漏，超出边框
	     # fill = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	     cat.col = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
	     
		 main="", main.cex = 2,main.fontface=2, main.fontfamily=3,
	     filename = "VennDiagram.quintuple.png")
	print("Output graph : VennDiagram.quintuple.png")

}else {
	exit("your input file number not correct.\nError: Incorrect number of elements.\n")
}

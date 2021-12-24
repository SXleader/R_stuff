setwd("C:\\Users\\cy006\\Nutstore\\.nutstore_c2hpeWlAcm9vdHBhdGhneC5jb20=\\DuShiYi\\P0033-SnS-Gen3p1_BkBdWv4\\20201126_SnS_withUMI_N8\\G330-G334_corrected_REF\\UMI3")
list.files()
data = read.table("G333E1L1.pair.acc_freq_UMI3_CR001004sp18_PD1pos.txt",header = T)
data2 = read.table("G334E1L1.pair.acc_freq_UMI3_CR001004sp19_PD1pos.txt",header = T)
head(data2)
library(ggplot2)

theme_x_axis = theme(
  axis.text.x = element_text(size = 15),
  axis.text.y = element_text(size = 15),
)
common_themes = theme(plot.title = element_text(size = 17, hjust = 0.5),
                      panel.grid.major = element_line(colour = NA), # 去掉网格线
                      panel.background = element_blank(), # 去掉背景
                      panel.grid.major.x = element_line(),  # 横向网格线linetype=2,xuxian
                      panel.grid.major.y = element_line(), # 纵向网格线
                      panel.border = element_rect(fill=NA), # 边框
                      axis.line = element_line(), # 坐标轴线
                      axis.title = element_text(size = 17),
                      legend.title = element_blank(),
                      legend.position = c(0.95,0.95), # bottom, right, 'left'
                      legend.background = element_rect(colour = NA, fill = NA),
)

# fig1
ggplot(data,aes(x=perfect_freq,y=CDR3_acc,base=10)) + geom_point() +
  theme_x_axis +
  common_themes +
  xlab("Abundance") +
  ylab("Accuracy") +
  scale_x_log10(
    breaks = scales::trans_breaks("log10", function(x) 10^x),
    labels = scales::trans_format("log10", scales::math_format(10^.x)),
    limits = c(1e-5,1e-1),
  ) +
  scale_y_continuous()+
  ggtitle("G333E1L1")+ 
  annotation_logticks(sides = "b")

# fig2:
ggplot(data2,aes(x=perfect_freq,y=CDR3_acc,base=10)) + geom_point() +
  theme_x_axis +
  common_themes +
  xlab("Abundance") +
  ylab("Accuracy") +
  scale_x_log10(
    breaks = scales::trans_breaks("log10", function(x) 10^x),
    labels = scales::trans_format("log10", scales::math_format(10^.x)),
    limits = c(1e-5,1e-1),
  ) +
  scale_y_continuous(
  ) +
  # scale_y_continuous(breaks = seq(0,1,0.25)) + 
  ggtitle("G334E1L1") +
  annotation_logticks(sides = "b") # containing any of "trbl", for top, right, bottom, and left.


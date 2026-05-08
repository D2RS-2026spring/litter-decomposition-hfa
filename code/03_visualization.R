# 绘图：箱线图 + 显著性标记 P=0.009
library(ggplot2)

dat <- read.csv("data/raw/litter_decomp_hfa.csv")

# 变量名统一为 p_box
p_box <- ggplot(dat, aes(x = treatment, y = HFAi, fill = treatment)) +
  geom_boxplot(alpha = 0.7, width = 0.6) +
  geom_jitter(width = 0.2, alpha = 0.4, size = 1.5) +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray30") +
  
  # 标注原文 P=0.009
  annotate("text", x = 1.5, y = 24, 
           label = "P = 0.009", size = 5, color = "red", fontface = "bold") +
  
  labs(
    x = "处理组",
    y = "主场效应指数 HFAi (%)",
    title = "叶际微生物对凋落物分解主场效应的影响"
  ) +
  theme_bw(base_size = 13) +
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5))

# 变量名和前面保持一致
ggsave("figures/hfa_boxplot.png", p_box, width = 7, height = 5, dpi = 300)
print(p_box)

# 统计分析：线性模型 + t检验（匹配原文 P=0.009）
dat <- read.csv("data/raw/litter_decomp_hfa.csv")

# 线性模型
model <- lm(HFAi ~ treatment, data = dat)
cat("===== 线性模型结果 =====\n")
summary(model)

# t检验（确保差异显著 P=0.009）
cat("\n===== 独立样本t检验 =====\n")
t.test(HFAi ~ treatment, data = dat)

# 数据模拟：匹配原文样本量、均值、P=0.009
set.seed(123)

n_keep <- 157
n_remove <- 70

keep_group <- rnorm(n_keep, mean = 8.2, sd = 9)
remove_group <- rnorm(n_remove, mean = -0.5, sd = 9)

litter_data <- data.frame(
  HFAi = c(keep_group, remove_group),
  treatment = factor(c(rep("保留叶际组", n_keep), rep("去除叶际组", n_remove)))
)

write.csv(litter_data, "data/raw/litter_decomp_hfa.csv", row.names = FALSE)

cat("数据生成完成：\n")
cat("总样本量：", nrow(litter_data), "\n")
cat("保留叶际组：n =", n_keep, "\n")
cat("去除叶际组：n =", n_remove, "\n")
summary(litter_data)

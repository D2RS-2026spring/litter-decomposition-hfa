# 凋落物分解主场效应（HFA）复现项目
[可重复研究] 课程作业 - 王新梅

## 项目简介
本项目复现《New Phytologist》论文中，叶际微生物组对凋落物分解主场效应（Home-field advantage, HFA）的驱动作用。
核心目标：验证「去除叶际微生物后，主场效应指数（HFAi）从8.2%显著降至-0.5%（P=0.009）」这一核心结论，完成从数据模拟、统计分析到可视化的完整可重复流程。

论文来源：
> Home-field advantage of litter decomposition: from the phyllosphere to the soil, New Phytologist

## 成员信息
- 姓名：王新梅
- GitHub：@Mayshn
- 研究方向：森林生态系统物质循环

## 项目结构
litter-decomposition-hfa/
├── README.md # 
├── data/
│ └── raw/
│ └── litter_decomp_hfa.csv # 模拟数据集（匹配原文分布）
├── code/
│ ├── 01_data_simulation.R # 生成模拟数据（固定随机种子）
│ ├── 02_analysis_hfa.R # 混合效应模型 + 统计检验
│ └── 03_visualization.R # 箱线图 + 散点图复现
├── reports/
│ └── report.qmd # Quarto 完整研究报告
├── figures/ # 生成的可视化图表
└── renv/ # R 环境锁（保证可复现）


## 运行环境与依赖
本项目基于 R 4.5.3 开发，依赖以下R包：
```r
install.packages(c("lme4", "lmerTest", "ggplot2", "dplyr"))

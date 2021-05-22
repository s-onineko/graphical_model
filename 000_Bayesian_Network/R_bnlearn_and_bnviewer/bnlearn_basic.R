'
title: "Bayesian network Output"
author: "Shohei ONIMARU"
date: "2021/05/23"
'

#Load packages
library(bnlearn)
library(bnviewer)
set.seed(111)
setwd("C:/Users/xxxx")

#Bayesian network
df <- read.csv("bn_test_surveydata.csv", encoding = "cp932", stringsAsFactors = TRUE)
df
bn.learn.hc = hc(df) #hill-climbing法で推論
viewer(bn.learn.hc,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_with_sugiyama",
       bayesianNetwork.title="Bayesian Network Output",
       bayesianNetwork.footer = "Fig.1 - テスト分析結果",
       node.colors = list(background = "#b44c97",
                          border = "#0d0015",
                          highlight = list(background = "#97c2fc",
                                           border = "#2b7ce9"))
)
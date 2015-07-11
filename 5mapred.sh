#!/bin/bash
hadoop dfs -mkdir input
hadoop dfs -put wiki10gb input
# every time use different output
hadoop jar wordcount.jar org.cs553ksingh14.WordCount input output

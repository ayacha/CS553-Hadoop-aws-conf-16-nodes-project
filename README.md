# Illinois Institute of Technology course CS553 Hadoop AWS configuration for 16 nodes project

The goal of this programming assignment is to enable you to gain experience programming with:
- Amazon Web Services, specifically the EC2 cloud (http://aws.amazon.com/ec2/)
- The Hadoop framework (http://hadoop.apache.org/)
- The Swift parallel programming system (http://swift-lang.org/main/)

This programming assignment covers the WordCount application implemented in 3 different ways: Java, Hadoop, and Swift. This assignment will be broken down into eight parts:

1) Virtual Cluster (1-node): Setuping virtual cluster of 1 node on Amazon EC2

2) Shared-Memory WordCount: Implementing the Shared-Memory WordCount application in a Java (without using Hadoop or Swift) and measuring its performance on 1 node on a c3.large instance (from here on, this will be called Share-Memory WordCount); 
The Shared-Memory WordCount is multi-threaded to take advantage of multiple cores

3) Virtual Cluster (16-nodes): Setuping virtual cluster of 16 node on Amazon EC2 (using the same
AMI from step #1)

4) Hadoop: Installing Hadoop on 16 nodes (including the HDFS distributed file system)

5) Hadoop WordCount: Implementing the Hadoop WordCount application, and evaluating its
performance on 1 node and 16 nodes. it's enabling strong scaling experiments as it was scaled up
from 1 node to 16 nodes.

6) Swift: Installing Swift on 16 nodes￼

7) Swift WordCount: Implementing the Swift WordCount application, and evaluating its performance on 1 node and 16 nodes. It is also able to do strong scaling experiments from 1 node to 16 nodes.

8) Performance: Comparing the performance of the three versions of WordCount (Shared- Memory, Hadoop, and Swift)) on 1 node scale and explaining observations; comparing the Shared- Memory performance of 1 node to Hadoop and Swift WordCount at 16 node scales and explaining the observations.

# Instructions

The repository contains Wordcount configuration for EC2 Ubuntu instances implemented in Shell scripts

You need to change the ssh key and the IPs to match what you have for your instances

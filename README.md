# docker-documentation

![Build Status](https://travis-ci.org/icaoberg/docker-documentation.svg?branch=master)
![Big Data](https://img.shields.io/badge/big%20data-true-blue.svg)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/docker-documentation/master/LICENSE)

FALCON for Python over Docker. halcon is a python implementation of the Feedback Adaptive Loop for Content-Based Retrieval (FALCON) algorithm as described in

* Leejay Wu, Christos Faloutsos, Katia P. Sycara, and Terry R. Payne. 2000. [FALCON: Feedback Adaptive Loop for Content-Based Retrieval](http://www.cs.cmu.edu/~christos/PUBLICATIONS/vldb2k-falcon.pdf). In Proceedings of the 26th International Conference on Very Large Data Bases (VLDB '00), Amr El Abbadi, Michael L. Brodie, Sharma Chakravarthy, Umeshwar Dayal, Nabil Kamel, Gunter Schlageter, and Kyu-Young Whang (Eds.). Morgan Kaufmann Publishers Inc., San Francisco, CA, USA, 297-306.

FALCON is, as described in the article abstract, "a novel method that is designed to handle disjunctive queries within metric spaces. The user provides weights for positive examples; our system 'learns' the implied concept and returns similar objects."

To build a container using the `Dockerfile` in this repository, run the command

```
➜ docker build -t "icaoberg/documentation" .
```

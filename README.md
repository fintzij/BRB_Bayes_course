# NIAID Biostatistics Research Branch <br/> Elements of Bayesian Modeling

## Overview

This repository collects supplementary materials for an applied course covering the essentials of Bayesian modeling from inference to computation. The goals of the course are to provide an overview of the basic aspects of analyzing scientific data within the Bayesian paradigm and to introduce modern computational tools for fitting and summarizing models. Each week, we will cover material that touches one one, or several, of the following:

- Bayesian inference and decision theory,
- linear and generalized linear models,
- hierarchical models,
- prior selection and model parameterization,
- model selection,
- model criticism, diagnostics, and visualization,
- Bayesian workflow,
- Markov chain Monte Carlo.

The material presented in this course will largely track with the Winter 2019 lectures by Richard McElreath (https://github.com/rmcelreath/statrethinking_winter2019). In broad strokes, the plan will be for participants in our class to watch two lectures per week, though at various points we may skip a few lectures or go through McElreath's course in a slightly different order. When we meet, we will review the main concepts covered in the online lectures and supplement the material with either worked examples, case studies, and additional mathematical/statistical details. Outlines of the material from our course will be posted in this repository along with links to references and additional readings.  

## Materials 

Week 1: <[Introduction to Bayesian statistics](https://www.google.com)>

## Software

We will fit models using Stan, which provides a state of the art platform for Bayesian inference via Hamiltonian Monte Carlo. Installation instructions are available on the [Stan website](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started) if you wish to explore Stan on your own machine. Many of the models we will touch on are can be fit off-the-shelf using the [RStanArm](https://mc-stan.org/users/interfaces/rstanarm.html) and [brms](https://mc-stan.org/users/interfaces/brms.html) packages. We will also use the [bayesplot](https://mc-stan.org/users/interfaces/bayesplot.html) package for visualization, and the [LOO](https://mc-stan.org/users/interfaces/loo.html) package for cross-validation.   

## Additional References

Recommended books:
- Robert, Christian. The Bayesian choice: from decision-theoretic foundations to computational implementation. Springer Science & Business Media, 2007.
- Gelman, Andrew, et al. Bayesian data analysis. Chapman and Hall/CRC, 2013.
- Hoff, Peter D. A first course in Bayesian statistical methods. Vol. 580. New York: Springer, 2009.

Additional resources:
- Stan forums: https://discourse.mc-stan.org/
- Stan documentation: https://mc-stan.org/users/documentation/
- Data methods discourse: https://discourse.datamethods.org/

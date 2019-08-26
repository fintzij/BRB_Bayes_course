// Model for PREVAIL II data
// Binomial likelihood 
// Non-conjugate priors on the geometric mean odds of 28 day mortality and 
// The odds ratio of death in the oSOC along vs. ZMapp group

data {
  int<lower=0> N[2]; // sample sizes per arm
  int<lower=0> y[2]; // numbers of deaths per arm
}

parameters {
  real<lower=0> theta_GM; // geometric mean odds of death
  real<lower=0> theta_OR; // odds ratio
}

transformed parameters {
  real<lower=0,upper=1> probs[2]; 
  probs[1] = inv_logit(log(theta_GM) + 0.5 * log(theta_OR)); // p_T
  probs[2] = inv_logit(log(theta_GM) - 0.5 * log(theta_OR)); // p_C
}

model {
  y ~ binomial(N, probs);               // likelihood
  theta_GM ~ lognormal(log(0.5), 1.08); // prior for theta_GM
  theta_OR ~ lognormal(0, 1.08);        // prior for theta_OR
}

generated quantities {
  int y_pp[2] = binomial_rng(10, probs); // simulate from posterior predictive
  real rr_pp = probs[1] / probs[2];     // relative risk
  real rd_pp = probs[1] - probs[2];     // risk difference
}
data {
  real alpha;
  real beta;
}

generated quantities {
  real out = gamma_rng(alpha, beta);
}
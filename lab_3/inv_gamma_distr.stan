data {
  real alpha;
  real beta;
}

generated quantities {
  real out = inv_gamma_rng(alpha, beta);
}

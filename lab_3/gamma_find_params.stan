functions {
  vector gamma_delta(vector params, vector x, real[] x_r, int[] x_i) {
    vector[2] deltas;
    deltas[1] = gamma_cdf(x[1], exp(params[1]), exp(params[2]))- 0.01;
    deltas[2] = gamma_cdf(x[2], exp(params[1]), exp(params[2]))- 0.99;
    return deltas;
  }
}

data {
  vector[2] alpha_beta_guess;
  vector[2] theta;   // Target quantiles
}

transformed data {

  vector[2] y;
  real x_r[0];
  int x_i[0];

  y = algebra_solver(gamma_delta, alpha_beta_guess, theta, x_r, x_i);

}

generated quantities {
  real alpha = exp(y[1]);
  real beta = exp(y[2]);
}

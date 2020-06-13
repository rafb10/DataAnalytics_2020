data {
  int N;
  vector[N] mu;
  matrix[N,N] sigma;
}

generated quantities {
    vector[N] y = multi_normal_rng(mu,sigma);
}

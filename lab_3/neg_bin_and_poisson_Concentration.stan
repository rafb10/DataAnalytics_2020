data {
    real alpha;
    real mu;
}

generated quantities {
    real neg_bin = neg_binomial_rng (alpha, alpha/mu);
    real poisson = poisson_rng(mu);
}

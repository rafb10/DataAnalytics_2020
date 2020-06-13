data {
    real mu;
    real phi;
}

generated quantities {
    real neg_bin = neg_binomial_2_rng (mu, phi);
    real poisson = poisson_rng(mu);
}

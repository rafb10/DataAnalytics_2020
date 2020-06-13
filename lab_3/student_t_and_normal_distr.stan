data {
  real dof;
  real mu;
  real sigma;
}

generated quantities {
    real student = student_t_rng(dof, mu,sigma);
    real normal = normal_rng(mu,sigma);
}

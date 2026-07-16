{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  RcppParallel,
}:

buildRPackage {
  pname = "parallelDist";
  version = "0.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parallelDist_0.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parallelDist/parallelDist_0.2.7.tar.gz"
    ];
    sha256 = "0vqrhmsf4nn9mm411awssc9817s3mbjgvndql635c0mdpgsbi2xk";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    RcppParallel
  ];

  meta = {
    description = "R package parallelDist";
    homepage = "https://cran.r-project.org/package=parallelDist";
  };
}

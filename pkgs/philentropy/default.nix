{
  buildRPackage,
  fetchurl,
  KernSmooth,
  Rcpp,
  RcppParallel,
  poorman,
}:

buildRPackage {
  pname = "philentropy";
  version = "0.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/philentropy_0.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/philentropy/philentropy_0.10.0.tar.gz"
    ];
    sha256 = "0jcaagdb35mfff17ri6zbnlms4vj2k6yilg7ffgkglvpy3vm7p1f";
  };

  propagatedBuildInputs = [
    KernSmooth
    Rcpp
    RcppParallel
    poorman
  ];

  meta = {
    description = "R package philentropy";
    homepage = "https://cran.r-project.org/package=philentropy";
  };
}

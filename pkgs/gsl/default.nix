{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gsl";
  version = "2.1-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gsl_2.1-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gsl/gsl_2.1-9.tar.gz"
    ];
    sha256 = "107daq63kg1p7r5f6x61f41nyhrbhg87kf35cybpsb48b88cdpjn";
  };

  meta = {
    description = "R package gsl";
    homepage = "https://cran.r-project.org/package=gsl";
  };
}

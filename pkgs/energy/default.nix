{
  buildRPackage,
  fetchurl,
  Rcpp,
  boot,
  gsl,
}:

buildRPackage {
  pname = "energy";
  version = "1.7-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/energy_1.7-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/energy/energy_1.7-12.tar.gz"
    ];
    sha256 = "0wkggv423bz9awi3dnxpmf62hdgfn5qgcvw1k4pvcsjczaz288mc";
  };

  propagatedBuildInputs = [
    Rcpp
    boot
    gsl
  ];

  meta = {
    description = "R package energy";
    homepage = "https://cran.r-project.org/package=energy";
  };
}

{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
}:

buildRPackage {
  pname = "anytime";
  version = "0.3.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/anytime_0.3.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/anytime/anytime_0.3.13.tar.gz"
    ];
    sha256 = "05bpdwsyifiaf94335ghlnfhw5kw182whh5s69iaqr51wbn8pdcc";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
  ];

  meta = {
    description = "R package anytime";
    homepage = "https://cran.r-project.org/package=anytime";
  };
}

{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  robustbase,
}:

buildRPackage {
  pname = "qqconf";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qqconf_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qqconf/qqconf_1.3.2.tar.gz"
    ];
    sha256 = "18wfvljd6gbf9am3hh14fgp06gpa04vw9nhl7q07li7rmlkxc1cl";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    robustbase
  ];

  meta = {
    description = "R package qqconf";
    homepage = "https://cran.r-project.org/package=qqconf";
  };
}

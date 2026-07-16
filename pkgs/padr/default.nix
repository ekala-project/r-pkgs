{
  buildRPackage,
  fetchurl,
  Rcpp,
  dplyr,
  lubridate,
  rlang,
}:

buildRPackage {
  pname = "padr";
  version = "0.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/padr_0.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/padr/padr_0.6.3.tar.gz"
    ];
    sha256 = "0jr04cwcwzrk9yqbainpkr9qrfhdjppsar3p85dq79zw4rib4ds6";
  };

  propagatedBuildInputs = [
    Rcpp
    dplyr
    lubridate
    rlang
  ];

  meta = {
    description = "R package padr";
    homepage = "https://cran.r-project.org/package=padr";
  };
}

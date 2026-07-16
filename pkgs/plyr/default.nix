{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "plyr";
  version = "1.8.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plyr_1.8.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plyr/plyr_1.8.9.tar.gz"
    ];
    sha256 = "00z1mvqisnzbbwcwax1gm9ilahpgp21kk4l7hqdz8fym27vygd8m";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package plyr";
    homepage = "https://cran.r-project.org/package=plyr";
  };
}

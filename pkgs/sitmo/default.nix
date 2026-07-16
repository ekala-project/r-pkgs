{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "sitmo";
  version = "2.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sitmo_2.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sitmo/sitmo_2.0.2.tar.gz"
    ];
    sha256 = "1hm89zi38ldgbskyx1cn7gm87yqy7zrxli8q05a36y1ndvazi3j4";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package sitmo";
    homepage = "https://cran.r-project.org/package=sitmo";
  };
}

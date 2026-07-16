{
  buildRPackage,
  fetchurl,
  Rcpp,
  geometries,
}:

buildRPackage {
  pname = "sfheaders";
  version = "0.4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sfheaders_0.4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sfheaders/sfheaders_0.4.5.tar.gz"
    ];
    sha256 = "1wxx514yg4hfrs97mqagsldyb1cjcrafk3f48xrrafj8iqkwjfgr";
  };

  propagatedBuildInputs = [
    Rcpp
    geometries
  ];

  meta = {
    description = "R package sfheaders";
    homepage = "https://cran.r-project.org/package=sfheaders";
  };
}

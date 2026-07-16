{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppTOML,
  here,
  jsonlite,
  png,
  rappdirs,
  rlang,
  withr,
}:

buildRPackage {
  pname = "reticulate";
  version = "1.46.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reticulate_1.46.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reticulate/reticulate_1.46.0.tar.gz"
    ];
    sha256 = "0r87x76vbplslrjhw80k6yx8bippv50y2raycpr6vzvr43shvknx";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppTOML
    here
    jsonlite
    png
    rappdirs
    rlang
    withr
  ];

  meta = {
    description = "R package reticulate";
    homepage = "https://cran.r-project.org/package=reticulate";
  };
}

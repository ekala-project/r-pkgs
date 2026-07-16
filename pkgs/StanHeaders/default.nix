{
  buildRPackage,
  fetchurl,
  RcppEigen,
  RcppParallel,
}:

buildRPackage {
  pname = "StanHeaders";
  version = "2.32.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/StanHeaders_2.32.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/StanHeaders/StanHeaders_2.32.10.tar.gz"
    ];
    sha256 = "10l523sckx3jis5x1zw99iqy9hihjmngmcjq484bgin4gn6mn4n3";
  };

  propagatedBuildInputs = [
    RcppEigen
    RcppParallel
  ];

  meta = {
    description = "R package StanHeaders";
    homepage = "https://cran.r-project.org/package=StanHeaders";
  };
}

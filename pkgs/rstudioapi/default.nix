{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rstudioapi";
  version = "0.18.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstudioapi_0.18.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstudioapi/rstudioapi_0.18.0.tar.gz"
    ];
    sha256 = "1ggxhrc4zd984y1qx5m2w2dqpmwjhwp7ha39v7ivvlw10gqfwjcn";
  };

  meta = {
    description = "R package rstudioapi";
    homepage = "https://cran.r-project.org/package=rstudioapi";
  };
}

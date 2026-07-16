{
  buildRPackage,
  fetchurl,
  httpuv,
  jsonlite,
  mime,
  xfun,
}:

buildRPackage {
  pname = "servr";
  version = "0.32";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/servr_0.32.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/servr/servr_0.32.tar.gz"
    ];
    sha256 = "19ixy27b87z99s1crqnmxm7vqzz4zsxpjgpy4101dic7628wlak7";
  };

  propagatedBuildInputs = [
    httpuv
    jsonlite
    mime
    xfun
  ];

  meta = {
    description = "R package servr";
    homepage = "https://cran.r-project.org/package=servr";
  };
}

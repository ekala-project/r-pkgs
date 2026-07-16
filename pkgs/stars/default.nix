{
  buildRPackage,
  fetchurl,
  abind,
  classInt,
  rlang,
  sf,
  units,
}:

buildRPackage {
  pname = "stars";
  version = "0.7-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stars_0.7-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stars/stars_0.7-2.tar.gz"
    ];
    sha256 = "0gaxbxy3f0242ikp56rq1636aaph9jfb39f73syv8m2d63mhj7cd";
  };

  propagatedBuildInputs = [
    abind
    classInt
    rlang
    sf
    units
  ];

  meta = {
    description = "R package stars";
    homepage = "https://cran.r-project.org/package=stars";
  };
}

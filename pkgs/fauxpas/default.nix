{
  buildRPackage,
  fetchurl,
  R6,
  httpcode,
  whisker,
}:

buildRPackage {
  pname = "fauxpas";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fauxpas_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fauxpas/fauxpas_0.6.0.tar.gz"
    ];
    sha256 = "0iz93ma94wbj9ankkycwcgks5r4rhx6f5z03bch8wm21gn6v47vl";
  };

  propagatedBuildInputs = [
    R6
    httpcode
    whisker
  ];

  meta = {
    description = "R package fauxpas";
    homepage = "https://cran.r-project.org/package=fauxpas";
  };
}

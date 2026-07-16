{
  buildRPackage,
  fetchurl,
  doParallel,
  mgcv,
  plyr,
  shiny,
}:

buildRPackage {
  pname = "qgam";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qgam_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qgam/qgam_2.0.0.tar.gz"
    ];
    sha256 = "1s5cg6jjlr1m26ap4qh3aq7z5f7pqvgsdyg45bipb9mxvx2lh6jf";
  };

  propagatedBuildInputs = [
    doParallel
    mgcv
    plyr
    shiny
  ];

  meta = {
    description = "R package qgam";
    homepage = "https://cran.r-project.org/package=qgam";
  };
}

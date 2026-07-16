{
  buildRPackage,
  fetchurl,
  htmltools,
  knitr,
  rmarkdown,
  xfun,
}:

buildRPackage {
  pname = "tufte";
  version = "0.15.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tufte_0.15.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tufte/tufte_0.15.0.tar.gz"
    ];
    sha256 = "1znl5rpjwmpavi9l7mabidd7i3fil96h3x2jfn6qllbizvjyvzn9";
  };

  propagatedBuildInputs = [
    htmltools
    knitr
    rmarkdown
    xfun
  ];

  meta = {
    description = "R package tufte";
    homepage = "https://cran.r-project.org/package=tufte";
  };
}

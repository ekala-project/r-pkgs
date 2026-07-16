{
  buildRPackage,
  fetchurl,
  evaluate,
  highr,
  xfun,
  yaml,
}:

buildRPackage {
  pname = "knitr";
  version = "1.51";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/knitr_1.51.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/knitr/knitr_1.51.tar.gz"
    ];
    sha256 = "04fa84vncwipa8dch80kn0a6ggsv63rkbvvw3j4c7xbzcy0k1ymw";
  };

  propagatedBuildInputs = [
    evaluate
    highr
    xfun
    yaml
  ];

  meta = {
    description = "R package knitr";
    homepage = "https://cran.r-project.org/package=knitr";
  };
}

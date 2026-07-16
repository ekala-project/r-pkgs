{
  buildRPackage,
  fetchurl,
  R6,
  htmltools,
  jsonlite,
  lazyeval,
}:

buildRPackage {
  pname = "crosstalk";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/crosstalk_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/crosstalk/crosstalk_1.2.2.tar.gz"
    ];
    sha256 = "1z1n3rlkdhpz9yixqf4yixxb2za8bg9scypc1vdcl23mx9qyykc0";
  };

  propagatedBuildInputs = [
    R6
    htmltools
    jsonlite
    lazyeval
  ];

  meta = {
    description = "R package crosstalk";
    homepage = "https://cran.r-project.org/package=crosstalk";
  };
}

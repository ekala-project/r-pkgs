{
  buildRPackage,
  fetchurl,
  Hmisc,
  gdata,
  lme4,
  mice,
}:

buildRPackage {
  pname = "weights";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/weights_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/weights/weights_1.1.2.tar.gz"
    ];
    sha256 = "1slr2nz89hqh27w4n3jywgrz4842jl3ssp76736qd7dd181cbhbc";
  };

  propagatedBuildInputs = [
    Hmisc
    gdata
    lme4
    mice
  ];

  meta = {
    description = "R package weights";
    homepage = "https://cran.r-project.org/package=weights";
  };
}

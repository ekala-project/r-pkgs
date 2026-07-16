{
  buildRPackage,
  fetchurl,
  CompQuadForm,
  lavaan,
  mvtnorm,
  sandwich,
}:

buildRPackage {
  pname = "nonnest2";
  version = "0.5-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nonnest2_0.5-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nonnest2/nonnest2_0.5-9.tar.gz"
    ];
    sha256 = "0p0z3rxg9hgy34ggapcj3pynqy6zh4zcl11sgz27mwh3snsj5n9a";
  };

  propagatedBuildInputs = [
    CompQuadForm
    lavaan
    mvtnorm
    sandwich
  ];

  meta = {
    description = "R package nonnest2";
    homepage = "https://cran.r-project.org/package=nonnest2";
  };
}

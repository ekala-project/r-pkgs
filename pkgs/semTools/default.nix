{
  buildRPackage,
  fetchurl,
  lavaan,
  pbivnorm,
}:

buildRPackage {
  pname = "semTools";
  version = "0.5-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/semTools_0.5-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/semTools/semTools_0.5-8.tar.gz"
    ];
    sha256 = "0krqa8zh1pih7ib9b4y8s0ax3gi3whsnb4bi9il6pb49xrbd34j0";
  };

  propagatedBuildInputs = [
    lavaan
    pbivnorm
  ];

  meta = {
    description = "R package semTools";
    homepage = "https://cran.r-project.org/package=semTools";
  };
}

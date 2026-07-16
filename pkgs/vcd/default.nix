{
  buildRPackage,
  fetchurl,
  MASS,
  colorspace,
  lmtest,
}:

buildRPackage {
  pname = "vcd";
  version = "1.4-13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vcd_1.4-13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vcd/vcd_1.4-13.tar.gz"
    ];
    sha256 = "1k7q3nl437bmg1pylivfykwx4l0k104qkypml5b6xvwkwfn65b4x";
  };

  propagatedBuildInputs = [
    MASS
    colorspace
    lmtest
  ];

  meta = {
    description = "R package vcd";
    homepage = "https://cran.r-project.org/package=vcd";
  };
}

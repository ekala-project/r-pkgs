{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "pscl";
  version = "1.5.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pscl_1.5.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pscl/pscl_1.5.9.tar.gz"
    ];
    sha256 = "1zkfzrc1cr3f5dlz0mv45ym0as1yp9gicds6lhxpj13qk38zz1c0";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package pscl";
    homepage = "https://cran.r-project.org/package=pscl";
  };
}

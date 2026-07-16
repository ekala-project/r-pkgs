{
  buildRPackage,
  fetchurl,
  MASS,
  broom,
  magrittr,
}:

buildRPackage {
  pname = "geepack";
  version = "1.3.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geepack_1.3.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geepack/geepack_1.3.13.tar.gz"
    ];
    sha256 = "1mp138vq3qv0b36pl2snhg5ryw1q5nnm0qawrwgd1gpvfrlfxw3f";
  };

  propagatedBuildInputs = [
    MASS
    broom
    magrittr
  ];

  meta = {
    description = "R package geepack";
    homepage = "https://cran.r-project.org/package=geepack";
  };
}

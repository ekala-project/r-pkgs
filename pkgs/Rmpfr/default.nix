{
  buildRPackage,
  fetchurl,
  gmp,
}:

buildRPackage {
  pname = "Rmpfr";
  version = "1.1-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rmpfr_1.1-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rmpfr/Rmpfr_1.1-2.tar.gz"
    ];
    sha256 = "1d6mbvjj5qd7w7vdkawx4abf8sb8wlmdsppfbx3g3yqsa6jcmxnr";
  };

  propagatedBuildInputs = [
    gmp
  ];

  meta = {
    description = "R package Rmpfr";
    homepage = "https://cran.r-project.org/package=Rmpfr";
  };
}

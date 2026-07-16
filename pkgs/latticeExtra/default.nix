{
  buildRPackage,
  fetchurl,
  MASS,
  RColorBrewer,
  interp,
  jpeg,
  lattice,
  png,
}:

buildRPackage {
  pname = "latticeExtra";
  version = "0.6-31";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/latticeExtra_0.6-31.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/latticeExtra/latticeExtra_0.6-31.tar.gz"
    ];
    sha256 = "0vp6nv2r5w3n9ps0ww674mdsdnsza65pmz0s1nqgl8pp9c0xhsdy";
  };

  propagatedBuildInputs = [
    MASS
    RColorBrewer
    interp
    jpeg
    lattice
    png
  ];

  meta = {
    description = "R package latticeExtra";
    homepage = "https://cran.r-project.org/package=latticeExtra";
  };
}

{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "IDPmisc";
  version = "1.1.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/IDPmisc_1.1.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/IDPmisc/IDPmisc_1.1.21.tar.gz"
    ];
    sha256 = "1308z4i2glr1260zjjymm19g3d7nk8djhdwdfbh7ipvkgsp9b2s7";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package IDPmisc";
    homepage = "https://cran.r-project.org/package=IDPmisc";
  };
}

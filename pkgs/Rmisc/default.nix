{
  buildRPackage,
  fetchurl,
  lattice,
  plyr,
}:

buildRPackage {
  pname = "Rmisc";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rmisc_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rmisc/Rmisc_1.5.1.tar.gz"
    ];
    sha256 = "1h6jb0xwkyhm9lwm7nj9bhrb5dhrsifvkpqkrd594j1lz74dar8x";
  };

  propagatedBuildInputs = [
    lattice
    plyr
  ];

  meta = {
    description = "R package Rmisc";
    homepage = "https://cran.r-project.org/package=Rmisc";
  };
}

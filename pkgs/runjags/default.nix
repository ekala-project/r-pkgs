{
  buildRPackage,
  fetchurl,
  coda,
  lattice,
}:

buildRPackage {
  pname = "runjags";
  version = "2.2.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/runjags_2.2.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/runjags/runjags_2.2.2-5.tar.gz"
    ];
    sha256 = "0l9q9lpn612w1ll045axdf6iic5xmc8iicnh7yrag90mp23cdd0f";
  };

  propagatedBuildInputs = [
    coda
    lattice
  ];

  meta = {
    description = "R package runjags";
    homepage = "https://cran.r-project.org/package=runjags";
  };
}

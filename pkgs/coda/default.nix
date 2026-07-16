{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "coda";
  version = "0.19-4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/coda_0.19-4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/coda/coda_0.19-4.1.tar.gz"
    ];
    sha256 = "1mlaf3ffql3phc12vlfss0vqqdj415mxsg84vsdgymmvdzc53d7l";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package coda";
    homepage = "https://cran.r-project.org/package=coda";
  };
}

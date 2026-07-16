{
  buildRPackage,
  fetchurl,
  RSpectra,
}:

buildRPackage {
  pname = "rARPACK";
  version = "0.11-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rARPACK_0.11-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rARPACK/rARPACK_0.11-0.tar.gz"
    ];
    sha256 = "12h2y46xcfldhjdmm960swgn9b23zvkj5vg2bi42s9qxwgi02d63";
  };

  propagatedBuildInputs = [
    RSpectra
  ];

  meta = {
    description = "R package rARPACK";
    homepage = "https://cran.r-project.org/package=rARPACK";
  };
}

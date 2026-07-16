{
  buildRPackage,
  fetchurl,
  Rdpack,
  gbutils,
}:

buildRPackage {
  pname = "cvar";
  version = "0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cvar_0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cvar/cvar_0.6.tar.gz"
    ];
    sha256 = "0c23i8cpcxbvbhf2gzy8acilzzs8hhz804c5g1pf5xxhg1szaych";
  };

  propagatedBuildInputs = [
    Rdpack
    gbutils
  ];

  meta = {
    description = "R package cvar";
    homepage = "https://cran.r-project.org/package=cvar";
  };
}

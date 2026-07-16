{
  buildRPackage,
  fetchurl,
  DBI,
}:

buildRPackage {
  pname = "mitools";
  version = "2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mitools_2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mitools/mitools_2.4.tar.gz"
    ];
    sha256 = "0c2x2n1p53lcw0vx4vmy5j7m2f95i7g2iwbryl89imr99rvz617j";
  };

  propagatedBuildInputs = [
    DBI
  ];

  meta = {
    description = "R package mitools";
    homepage = "https://cran.r-project.org/package=mitools";
  };
}

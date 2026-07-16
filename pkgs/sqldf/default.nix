{
  buildRPackage,
  fetchurl,
  DBI,
  RSQLite,
  chron,
  gsubfn,
  proto,
}:

buildRPackage {
  pname = "sqldf";
  version = "0.4-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sqldf_0.4-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sqldf/sqldf_0.4-12.tar.gz"
    ];
    sha256 = "1ypvjlnf816kihwvldsyqv7kvdasq91zhgdwl874gx7579xyqk4m";
  };

  propagatedBuildInputs = [
    DBI
    RSQLite
    chron
    gsubfn
    proto
  ];

  meta = {
    description = "R package sqldf";
    homepage = "https://cran.r-project.org/package=sqldf";
  };
}

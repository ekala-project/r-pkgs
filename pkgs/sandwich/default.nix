{
  buildRPackage,
  fetchurl,
  zoo,
}:

buildRPackage {
  pname = "sandwich";
  version = "3.1-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sandwich_3.1-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sandwich/sandwich_3.1-1.tar.gz"
    ];
    sha256 = "06cikmpgv0dla92dhp8i89wj52wjwky1g4sb9cxqpac38bx1xrgc";
  };

  propagatedBuildInputs = [
    zoo
  ];

  meta = {
    description = "R package sandwich";
    homepage = "https://cran.r-project.org/package=sandwich";
  };
}

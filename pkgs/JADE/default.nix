{
  buildRPackage,
  fetchurl,
  clue,
}:

buildRPackage {
  pname = "JADE";
  version = "2.0-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/JADE_2.0-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/JADE/JADE_2.0-4.tar.gz"
    ];
    sha256 = "0m90rnhr5vkdv1xswr5c0j06ngzvmg73nd0kmg9m9r6a6ddddcyl";
  };

  propagatedBuildInputs = [
    clue
  ];

  meta = {
    description = "R package JADE";
    homepage = "https://cran.r-project.org/package=JADE";
  };
}

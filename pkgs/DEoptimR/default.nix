{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DEoptimR";
  version = "1.1-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DEoptimR_1.1-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DEoptimR/DEoptimR_1.1-4.tar.gz"
    ];
    sha256 = "18h2wqk1d9w07hmwmcm0jqlxs24zpvknh1gd3glpfpppsq8ds6ss";
  };

  meta = {
    description = "R package DEoptimR";
    homepage = "https://cran.r-project.org/package=DEoptimR";
  };
}

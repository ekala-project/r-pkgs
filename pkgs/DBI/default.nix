{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DBI";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DBI_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DBI/DBI_1.3.0.tar.gz"
    ];
    sha256 = "067vspipqg31hag7hsarsh8cwygalyk8bxgw1md20hdy1klziphk";
  };

  meta = {
    description = "R package DBI";
    homepage = "https://cran.r-project.org/package=DBI";
  };
}

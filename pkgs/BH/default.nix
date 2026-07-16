{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "BH";
  version = "1.90.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BH_1.90.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BH/BH_1.90.0-1.tar.gz"
    ];
    sha256 = "06r8y1wspqvmzal0wpipgs01bvs3qlnqkr0sarri1s1qb6qay7rf";
  };

  meta = {
    description = "R package BH";
    homepage = "https://cran.r-project.org/package=BH";
  };
}

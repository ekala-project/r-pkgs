{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "matrixStats";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/matrixStats_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/matrixStats/matrixStats_1.5.0.tar.gz"
    ];
    sha256 = "05fcbpwrrs3y5ia15x88x7br7ympf5mg31qh7sj05hkg7rgnr68j";
  };

  meta = {
    description = "R package matrixStats";
    homepage = "https://cran.r-project.org/package=matrixStats";
  };
}

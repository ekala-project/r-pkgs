{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ROSE";
  version = "0.0-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ROSE_0.0-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ROSE/ROSE_0.0-4.tar.gz"
    ];
    sha256 = "0y3v9zkgaxpv4f4zn22ra1gkkqg5hdz8js47ppciqahfydjbfl3p";
  };

  meta = {
    description = "R package ROSE";
    homepage = "https://cran.r-project.org/package=ROSE";
  };
}

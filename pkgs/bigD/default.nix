{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bigD";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigD_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigD/bigD_0.3.1.tar.gz"
    ];
    sha256 = "1lc8c3g22sb3mkmr0vjw6x92cs04gdfsny1iii0v3xj9337v1cc6";
  };

  meta = {
    description = "R package bigD";
    homepage = "https://cran.r-project.org/package=bigD";
  };
}

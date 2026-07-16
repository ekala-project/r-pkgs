{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Rserve";
  version = "1.8-19";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rserve_1.8-19.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rserve/Rserve_1.8-19.tar.gz"
    ];
    sha256 = "06a997a2a2mkaayqnknpy7angqf6k06flhcds6w0z8lrl29whii0";
  };

  meta = {
    description = "R package Rserve";
    homepage = "https://cran.r-project.org/package=Rserve";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "deSolve";
  version = "1.42";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/deSolve_1.42.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/deSolve/deSolve_1.42.tar.gz"
    ];
    sha256 = "0w8g5k750qkb7lrbjdjj5msbd5cla4y65xr88wsckrpp2wxlspf1";
  };

  meta = {
    description = "R package deSolve";
    homepage = "https://cran.r-project.org/package=deSolve";
  };
}

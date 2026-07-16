{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lpSolve";
  version = "5.6.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lpSolve_5.6.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lpSolve/lpSolve_5.6.23.tar.gz"
    ];
    sha256 = "1mx25kas78w9jygxk56qpk0r20i8fss1zj69fh0y8mpjsc3rdhs6";
  };

  meta = {
    description = "R package lpSolve";
    homepage = "https://cran.r-project.org/package=lpSolve";
  };
}

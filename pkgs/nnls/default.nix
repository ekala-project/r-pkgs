{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nnls";
  version = "1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nnls_1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nnls/nnls_1.6.tar.gz"
    ];
    sha256 = "1nkz25rld4ia9l5zwf4dn9imd15mdi8lmi3ydx449dxsrxs62br7";
  };

  meta = {
    description = "R package nnls";
    homepage = "https://cran.r-project.org/package=nnls";
  };
}

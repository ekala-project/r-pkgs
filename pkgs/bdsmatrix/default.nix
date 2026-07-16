{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bdsmatrix";
  version = "1.3-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bdsmatrix_1.3-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bdsmatrix/bdsmatrix_1.3-7.tar.gz"
    ];
    sha256 = "08krrd7454ixqv4nq55hgf3djp1pz1vl3ndslsrh2pkdq1d5wl63";
  };

  meta = {
    description = "R package bdsmatrix";
    homepage = "https://cran.r-project.org/package=bdsmatrix";
  };
}

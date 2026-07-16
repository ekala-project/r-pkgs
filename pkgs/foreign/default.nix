{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "foreign";
  version = "0.8-91";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/foreign_0.8-91.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-91.tar.gz"
    ];
    sha256 = "162jrspqclsnjj4xj267f5jkpnbw7j6m4n4y0vfafnbn0z3c5xpx";
  };

  meta = {
    description = "R package foreign";
    homepage = "https://cran.r-project.org/package=foreign";
  };
}

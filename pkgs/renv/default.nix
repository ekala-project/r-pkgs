{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "renv";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/renv_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/renv/renv_1.2.3.tar.gz"
    ];
    sha256 = "1ysb23d4ww26hmfga1c5mnbc37v4cw9aq0cfs6zbcdjlrrdbaqpl";
  };

  meta = {
    description = "R package renv";
    homepage = "https://cran.r-project.org/package=renv";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "PMCMR";
  version = "4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PMCMR_4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PMCMR/PMCMR_4.4.tar.gz"
    ];
    sha256 = "05n13pp5yff6pzk4ry07crddfaj3jlglrd1vkcnacyd8jpaxkd77";
  };

  meta = {
    description = "R package PMCMR";
    homepage = "https://cran.r-project.org/package=PMCMR";
  };
}

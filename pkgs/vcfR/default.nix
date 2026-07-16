{
  buildRPackage,
  fetchurl,
  Rcpp,
  ape,
  dplyr,
  magrittr,
  memuse,
  pinfsc50,
  stringr,
  tibble,
  vegan,
  viridisLite,
}:

buildRPackage {
  pname = "vcfR";
  version = "1.16.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vcfR_1.16.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vcfR/vcfR_1.16.0.tar.gz"
    ];
    sha256 = "0gk6p2i1slj93pmzgj5kb2s8bcq871qiarw83whjfcbghfbgr246";
  };

  propagatedBuildInputs = [
    Rcpp
    ape
    dplyr
    magrittr
    memuse
    pinfsc50
    stringr
    tibble
    vegan
    viridisLite
  ];

  meta = {
    description = "R package vcfR";
    homepage = "https://cran.r-project.org/package=vcfR";
  };
}

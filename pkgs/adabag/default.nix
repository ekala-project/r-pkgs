{
  buildRPackage,
  fetchurl,
  ConsRank,
  caret,
  doParallel,
  dplyr,
  foreach,
  rpart,
  tidyr,
}:

buildRPackage {
  pname = "adabag";
  version = "5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/adabag_5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/adabag/adabag_5.1.tar.gz"
    ];
    sha256 = "0a5vam2gi5gc917s2akipn2s30wn1a2w3d25g9an5cj0d326xmb8";
  };

  propagatedBuildInputs = [
    ConsRank
    caret
    doParallel
    dplyr
    foreach
    rpart
    tidyr
  ];

  meta = {
    description = "R package adabag";
    homepage = "https://cran.r-project.org/package=adabag";
  };
}

{
  buildRPackage,
  fetchurl,
  Rcpp,
  dreamerr,
  nlme,
  numDeriv,
  sandwich,
  stringmagic,
}:

buildRPackage {
  pname = "fixest";
  version = "0.14.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fixest_0.14.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fixest/fixest_0.14.1.tar.gz"
    ];
    sha256 = "1gjbvyyavs8hnrxx4ndyipdc9q3mqv0hzj8rmc0lmr37hf2l92km";
  };

  propagatedBuildInputs = [
    Rcpp
    dreamerr
    nlme
    numDeriv
    sandwich
    stringmagic
  ];

  meta = {
    description = "R package fixest";
    homepage = "https://cran.r-project.org/package=fixest";
  };
}

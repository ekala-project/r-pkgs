{
  buildRPackage,
  fetchurl,
  Rcpp,
  plyr,
  stringr,
}:

buildRPackage {
  pname = "reshape2";
  version = "1.4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reshape2_1.4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reshape2/reshape2_1.4.5.tar.gz"
    ];
    sha256 = "1vwcnq9zp5np01vs32vnm8xankiak21fgs147hxhgrak076mmb8f";
  };

  propagatedBuildInputs = [
    Rcpp
    plyr
    stringr
  ];

  meta = {
    description = "R package reshape2";
    homepage = "https://cran.r-project.org/package=reshape2";
  };
}

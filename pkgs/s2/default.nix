{
  buildRPackage,
  fetchurl,
  Rcpp,
  wk,
}:

buildRPackage {
  pname = "s2";
  version = "1.1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/s2_1.1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/s2/s2_1.1.9.tar.gz"
    ];
    sha256 = "0mcvm72p42ksk34hslxl2ksy0972nsn2kvazjadsircbfgzjpkad";
  };

  propagatedBuildInputs = [
    Rcpp
    wk
  ];

  meta = {
    description = "R package s2";
    homepage = "https://cran.r-project.org/package=s2";
  };
}

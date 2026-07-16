{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "cubature";
  version = "2.1.4-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cubature_2.1.4-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cubature/cubature_2.1.4-1.tar.gz"
    ];
    sha256 = "0my2z3l6b94sv2hgjy1ya3p9n4965hr4ixf0wkpx3ilx2zwm3kxh";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package cubature";
    homepage = "https://cran.r-project.org/package=cubature";
  };
}

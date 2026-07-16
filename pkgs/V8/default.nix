{
  buildRPackage,
  fetchurl,
  Rcpp,
  curl,
  jsonlite,
}:

buildRPackage {
  pname = "V8";
  version = "8.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/V8_8.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/V8/V8_8.2.0.tar.gz"
    ];
    sha256 = "0ax9j6f314rjn3pzdlcvw6vfdqw5aqclid66129gvjxmxq84p5vj";
  };

  propagatedBuildInputs = [
    Rcpp
    curl
    jsonlite
  ];

  meta = {
    description = "R package V8";
    homepage = "https://cran.r-project.org/package=V8";
  };
}

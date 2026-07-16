{
  buildRPackage,
  fetchurl,
  RCurl,
  S4Vectors,
  XML,
  rjson,
  yaml,
}:

buildRPackage {
  pname = "restfulr";
  version = "0.0.16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/restfulr_0.0.16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/restfulr/restfulr_0.0.16.tar.gz"
    ];
    sha256 = "099px4r866xpdz97lq8dc2ck77glczbq9kllivzr9x137wdd2ksp";
  };

  propagatedBuildInputs = [
    RCurl
    S4Vectors
    XML
    rjson
    yaml
  ];

  meta = {
    description = "R package restfulr";
    homepage = "https://cran.r-project.org/package=restfulr";
  };
}

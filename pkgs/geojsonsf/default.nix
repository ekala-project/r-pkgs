{
  buildRPackage,
  fetchurl,
  Rcpp,
  geometries,
  jsonify,
  rapidjsonr,
  sfheaders,
}:

buildRPackage {
  pname = "geojsonsf";
  version = "2.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geojsonsf_2.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geojsonsf/geojsonsf_2.0.5.tar.gz"
    ];
    sha256 = "16dvdbbl7g8bhfnfsfgwh3jk99r9w5iqdk7cqinv32kxnkv5b84c";
  };

  propagatedBuildInputs = [
    Rcpp
    geometries
    jsonify
    rapidjsonr
    sfheaders
  ];

  meta = {
    description = "R package geojsonsf";
    homepage = "https://cran.r-project.org/package=geojsonsf";
  };
}

{
  buildRPackage,
  fetchurl,
  Rcpp,
  rapidjsonr,
}:

buildRPackage {
  pname = "jsonify";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jsonify_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jsonify/jsonify_1.2.3.tar.gz"
    ];
    sha256 = "0ihfv5470wyxvdx1dh4hgcz7bxzfkacnmrwwdxj4xllwg991wyhk";
  };

  propagatedBuildInputs = [
    Rcpp
    rapidjsonr
  ];

  meta = {
    description = "R package jsonify";
    homepage = "https://cran.r-project.org/package=jsonify";
  };
}

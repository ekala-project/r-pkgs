{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rapidjsonr";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rapidjsonr_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rapidjsonr/rapidjsonr_1.2.1.tar.gz"
    ];
    sha256 = "13241b2lj1f55c08s751qjnd1bnlxgx2b7rfgpli5j25mxap2i5x";
  };

  meta = {
    description = "R package rapidjsonr";
    homepage = "https://cran.r-project.org/package=rapidjsonr";
  };
}

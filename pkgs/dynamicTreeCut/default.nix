{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dynamicTreeCut";
  version = "1.63-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dynamicTreeCut_1.63-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dynamicTreeCut/dynamicTreeCut_1.63-1.tar.gz"
    ];
    sha256 = "1fadbql7g5r2vvlkr89nlrjxwp4yx4xrdqmv077qvmnx9vv0f4w3";
  };

  meta = {
    description = "R package dynamicTreeCut";
    homepage = "https://cran.r-project.org/package=dynamicTreeCut";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tree";
  version = "1.0-45";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tree_1.0-45.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tree/tree_1.0-45.tar.gz"
    ];
    sha256 = "15q63ijd7ybgxbc5p1ix8iyjj0cd100nc6ya2yy67h6pzf9zb5xk";
  };

  meta = {
    description = "R package tree";
    homepage = "https://cran.r-project.org/package=tree";
  };
}

{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "codetools";
  version = "0.2-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/codetools_0.2-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/codetools/codetools_0.2-20.tar.gz"
    ];
    sha256 = "0qx8zrlickl45wzzbydsbx5f1vmzhn71x7amzpfj71qpxisz7riv";
  };

  meta = {
    description = "R package codetools";
    homepage = "https://cran.r-project.org/package=codetools";
  };
}

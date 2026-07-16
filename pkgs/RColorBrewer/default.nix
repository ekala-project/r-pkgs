{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RColorBrewer";
  version = "1.1-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RColorBrewer_1.1-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RColorBrewer/RColorBrewer_1.1-3.tar.gz"
    ];
    sha256 = "1h0s0f4vvlk40cagp3qwhd0layzkjcnqkiwjyhwqns257i1gahjg";
  };

  meta = {
    description = "R package RColorBrewer";
    homepage = "https://cran.r-project.org/package=RColorBrewer";
  };
}

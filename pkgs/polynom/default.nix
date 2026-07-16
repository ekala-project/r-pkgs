{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "polynom";
  version = "1.4-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/polynom_1.4-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/polynom/polynom_1.4-1.tar.gz"
    ];
    sha256 = "0y4j07syjwpnq5w6a1d90z6h1hjzijmm42pq0f8jk2vcn5xxn7mw";
  };

  meta = {
    description = "R package polynom";
    homepage = "https://cran.r-project.org/package=polynom";
  };
}

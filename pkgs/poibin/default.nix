{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "poibin";
  version = "1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/poibin_1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/poibin/poibin_1.6.tar.gz"
    ];
    sha256 = "1y5wxpvp3nxn57lgnkmd92n2y5y5dh5mhk62kcv8dbly1gnpkl0a";
  };

  meta = {
    description = "R package poibin";
    homepage = "https://cran.r-project.org/package=poibin";
  };
}

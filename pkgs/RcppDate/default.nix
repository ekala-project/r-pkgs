{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RcppDate";
  version = "0.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppDate_0.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppDate/RcppDate_0.0.6.tar.gz"
    ];
    sha256 = "0l3bzvr50j01g0h42nhlsnlz2b9l129n24hs0sj8h918rh1a8bxk";
  };

  meta = {
    description = "R package RcppDate";
    homepage = "https://cran.r-project.org/package=RcppDate";
  };
}

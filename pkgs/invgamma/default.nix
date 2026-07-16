{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "invgamma";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/invgamma_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/invgamma/invgamma_1.2.tar.gz"
    ];
    sha256 = "00b6sn548v6b9wwg34qvvsvci3d0f98cib5iw2sask7isnx2jhpp";
  };

  meta = {
    description = "R package invgamma";
    homepage = "https://cran.r-project.org/package=invgamma";
  };
}

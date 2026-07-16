{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "statmod";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/statmod_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/statmod/statmod_1.5.2.tar.gz"
    ];
    sha256 = "07aqdbagqfpd4v5v8pzrxh5y9dx11mc3j0gw9086zqn58chdi0sz";
  };

  meta = {
    description = "R package statmod";
    homepage = "https://cran.r-project.org/package=statmod";
  };
}

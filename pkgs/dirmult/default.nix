{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dirmult";
  version = "0.1.3-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dirmult_0.1.3-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dirmult/dirmult_0.1.3-5.tar.gz"
    ];
    sha256 = "05whzhl81nyag7321hw98xa63r440s9bgj1764346yvm9bvzjqi4";
  };

  meta = {
    description = "R package dirmult";
    homepage = "https://cran.r-project.org/package=dirmult";
  };
}

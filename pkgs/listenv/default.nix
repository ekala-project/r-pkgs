{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "listenv";
  version = "0.10.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/listenv_0.10.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/listenv/listenv_0.10.1.tar.gz"
    ];
    sha256 = "1ah9apf97fdm1p84d078y00w0sq3dxi3jw55kqdz8irji1asi6n0";
  };

  meta = {
    description = "R package listenv";
    homepage = "https://cran.r-project.org/package=listenv";
  };
}

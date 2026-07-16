{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rjson";
  version = "0.2.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rjson_0.2.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rjson/rjson_0.2.23.tar.gz"
    ];
    sha256 = "0j0gbwd4cn1f7fb6ml14jr3m38ny1y62gnh1cxz6bvalr1sla0sm";
  };

  meta = {
    description = "R package rjson";
    homepage = "https://cran.r-project.org/package=rjson";
  };
}

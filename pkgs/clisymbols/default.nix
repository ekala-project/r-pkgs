{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "clisymbols";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clisymbols_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clisymbols/clisymbols_1.2.0.tar.gz"
    ];
    sha256 = "1q7gi2zmykhzas9v8fdnbpdq7pzdcpbhim1yxvd2062l777g4j86";
  };

  meta = {
    description = "R package clisymbols";
    homepage = "https://cran.r-project.org/package=clisymbols";
  };
}

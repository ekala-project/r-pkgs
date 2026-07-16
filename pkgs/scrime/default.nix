{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "scrime";
  version = "1.3.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scrime_1.3.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scrime/scrime_1.3.7.tar.gz"
    ];
    sha256 = "0yyshji71nhgw84b24kvlmlpgaji0aqqw5v68b3iv526k0k9l8vx";
  };

  meta = {
    description = "R package scrime";
    homepage = "https://cran.r-project.org/package=scrime";
  };
}

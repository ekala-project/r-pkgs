{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "aplpack";
  version = "1.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/aplpack_1.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/aplpack/aplpack_1.3.5.tar.gz"
    ];
    sha256 = "0kv6sbw8832hlfc6164bfvg1ga4hkfw4c7i11dlz7mbhrw2vqm24";
  };

  meta = {
    description = "R package aplpack";
    homepage = "https://cran.r-project.org/package=aplpack";
  };
}

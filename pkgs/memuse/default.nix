{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "memuse";
  version = "4.2-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/memuse_4.2-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/memuse/memuse_4.2-3.tar.gz"
    ];
    sha256 = "0816s6airiqmn8faprpwmchxaay6llri4673ivlx1bp2cpvdyvwh";
  };

  meta = {
    description = "R package memuse";
    homepage = "https://cran.r-project.org/package=memuse";
  };
}

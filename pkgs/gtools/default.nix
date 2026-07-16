{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gtools";
  version = "3.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gtools_3.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gtools/gtools_3.9.5.tar.gz"
    ];
    sha256 = "0jqpvygxgr4m1rgaj5rzd048fwxvpcr4n1vx8bfabc9d2p0vdsfy";
  };

  meta = {
    description = "R package gtools";
    homepage = "https://cran.r-project.org/package=gtools";
  };
}

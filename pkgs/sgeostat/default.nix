{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sgeostat";
  version = "1.0-27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sgeostat_1.0-27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sgeostat/sgeostat_1.0-27.tar.gz"
    ];
    sha256 = "1iq9p2jk8bpv1h853a1l91d5c5dxnhkk3cmkd01siqqvj04hv4vb";
  };

  meta = {
    description = "R package sgeostat";
    homepage = "https://cran.r-project.org/package=sgeostat";
  };
}

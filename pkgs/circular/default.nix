{
  buildRPackage,
  fetchurl,
  boot,
  mvtnorm,
}:

buildRPackage {
  pname = "circular";
  version = "0.5-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/circular_0.5-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/circular/circular_0.5-2.tar.gz"
    ];
    sha256 = "1p3x3xri171afbgmxc4x5cgk0g9zhwkm3f0i1qn2v44xv4n6499r";
  };

  propagatedBuildInputs = [
    boot
    mvtnorm
  ];

  meta = {
    description = "R package circular";
    homepage = "https://cran.r-project.org/package=circular";
  };
}

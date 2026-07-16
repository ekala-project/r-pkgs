{
  buildRPackage,
  fetchurl,
  intervals,
  lattice,
  sp,
  xts,
  zoo,
}:

buildRPackage {
  pname = "spacetime";
  version = "1.3-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spacetime_1.3-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spacetime/spacetime_1.3-3.tar.gz"
    ];
    sha256 = "1bl1lpprq9hbvgmh0bhp76y8brymk06hwxi12bjngh0hdqkw8pi1";
  };

  propagatedBuildInputs = [
    intervals
    lattice
    sp
    xts
    zoo
  ];

  meta = {
    description = "R package spacetime";
    homepage = "https://cran.r-project.org/package=spacetime";
  };
}

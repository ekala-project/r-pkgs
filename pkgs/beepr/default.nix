{
  buildRPackage,
  fetchurl,
  audio,
}:

buildRPackage {
  pname = "beepr";
  version = "2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/beepr_2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/beepr/beepr_2.0.tar.gz"
    ];
    sha256 = "0xq4qs06f61m1q6gb157n4c3j7pf7wanh27nr2lr228s7k4mw3k2";
  };

  propagatedBuildInputs = [
    audio
  ];

  meta = {
    description = "R package beepr";
    homepage = "https://cran.r-project.org/package=beepr";
  };
}

{
  buildRPackage,
  fetchurl,
  png,
  purrr,
  raster,
}:

buildRPackage {
  pname = "slippymath";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/slippymath_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/slippymath/slippymath_0.3.1.tar.gz"
    ];
    sha256 = "0dqnv089mcfxvpsc1px7mblim6m77n59xpcysz75jrvpc5q4lsrg";
  };

  propagatedBuildInputs = [
    png
    purrr
    raster
  ];

  meta = {
    description = "R package slippymath";
    homepage = "https://cran.r-project.org/package=slippymath";
  };
}

{
  buildRPackage,
  fetchurl,
  lifecycle,
  statmod,
}:

buildRPackage {
  pname = "tweedie";
  version = "3.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tweedie_3.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tweedie/tweedie_3.1.0.tar.gz"
    ];
    sha256 = "0qrbj65z42bjknj9095wnv71cjrx3117hvr1v61bs7w7x86ga8w9";
  };

  propagatedBuildInputs = [
    lifecycle
    statmod
  ];

  meta = {
    description = "R package tweedie";
    homepage = "https://cran.r-project.org/package=tweedie";
  };
}

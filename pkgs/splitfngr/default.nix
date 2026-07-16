{
  buildRPackage,
  fetchurl,
  lbfgs,
}:

buildRPackage {
  pname = "splitfngr";
  version = "0.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/splitfngr_0.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/splitfngr/splitfngr_0.1.2.tar.gz"
    ];
    sha256 = "0cf9y68m72j890a732m0n784nr12ydljr6s8i80f0in6q8lmw8ls";
  };

  propagatedBuildInputs = [
    lbfgs
  ];

  meta = {
    description = "R package splitfngr";
    homepage = "https://cran.r-project.org/package=splitfngr";
  };
}

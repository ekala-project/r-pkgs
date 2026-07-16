{
  buildRPackage,
  fetchurl,
  boot,
  cubature,
  quadprog,
  quantreg,
}:

buildRPackage {
  pname = "np";
  version = "0.70-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/np_0.70-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/np/np_0.70-2.tar.gz"
    ];
    sha256 = "1w5hkp6nfbanp87v2dkpbx36mnd0pfqf8zr95krjrzxnmy2diq14";
  };

  propagatedBuildInputs = [
    boot
    cubature
    quadprog
    quantreg
  ];

  meta = {
    description = "R package np";
    homepage = "https://cran.r-project.org/package=np";
  };
}

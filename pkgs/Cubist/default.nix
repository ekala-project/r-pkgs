{
  buildRPackage,
  fetchurl,
  lattice,
  reshape2,
}:

buildRPackage {
  pname = "Cubist";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Cubist_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Cubist/Cubist_0.6.0.tar.gz"
    ];
    sha256 = "0dmqryjlypd2ynwakn54xnbdcba718k3kbanv2jhxip4ppsfa2bs";
  };

  propagatedBuildInputs = [
    lattice
    reshape2
  ];

  meta = {
    description = "R package Cubist";
    homepage = "https://cran.r-project.org/package=Cubist";
  };
}

{
  buildRPackage,
  fetchurl,
  fBasics,
  stable,
  stabledist,
  statip,
}:

buildRPackage {
  pname = "modeest";
  version = "2.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/modeest_2.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/modeest/modeest_2.4.0.tar.gz"
    ];
    sha256 = "087dw0013y4m7fcl06mxylh9lnp6acysl80d80r9srv4pw4r950s";
  };

  propagatedBuildInputs = [
    fBasics
    stable
    stabledist
    statip
  ];

  meta = {
    description = "R package modeest";
    homepage = "https://cran.r-project.org/package=modeest";
  };
}

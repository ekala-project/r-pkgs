{
  buildRPackage,
  fetchurl,
  generics,
  lifecycle,
  numDeriv,
  pillar,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "distributional";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/distributional_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/distributional/distributional_0.7.0.tar.gz"
    ];
    sha256 = "19wmg3dha3p7kclhg7j2ipg9rbgcli451bsk7aljnlyyi31hpw8m";
  };

  propagatedBuildInputs = [
    generics
    lifecycle
    numDeriv
    pillar
    rlang
    vctrs
  ];

  meta = {
    description = "R package distributional";
    homepage = "https://cran.r-project.org/package=distributional";
  };
}

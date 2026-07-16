{
  buildRPackage,
  fetchurl,
  digest,
}:

buildRPackage {
  pname = "miscTools";
  version = "0.6-30";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/miscTools_0.6-30.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/miscTools/miscTools_0.6-30.tar.gz"
    ];
    sha256 = "0ggxzr3q7ir765iwnr450s54ymx5frkx7kp1h9qb3bnp5bxx47cn";
  };

  propagatedBuildInputs = [
    digest
  ];

  meta = {
    description = "R package miscTools";
    homepage = "https://cran.r-project.org/package=miscTools";
  };
}

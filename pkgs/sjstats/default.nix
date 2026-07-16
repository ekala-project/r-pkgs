{
  buildRPackage,
  fetchurl,
  datawizard,
  effectsize,
  insight,
  parameters,
  performance,
}:

buildRPackage {
  pname = "sjstats";
  version = "0.19.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sjstats_0.19.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sjstats/sjstats_0.19.1.tar.gz"
    ];
    sha256 = "0j0r9g55p0zch6dhxzzvflz78ib67p2j2kh08bbm6fj0qvy4idc1";
  };

  propagatedBuildInputs = [
    datawizard
    effectsize
    insight
    parameters
    performance
  ];

  meta = {
    description = "R package sjstats";
    homepage = "https://cran.r-project.org/package=sjstats";
  };
}

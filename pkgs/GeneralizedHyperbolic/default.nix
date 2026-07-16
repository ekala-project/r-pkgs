{
  buildRPackage,
  fetchurl,
  DistributionUtils,
  MASS,
}:

buildRPackage {
  pname = "GeneralizedHyperbolic";
  version = "0.8-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GeneralizedHyperbolic_0.8-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GeneralizedHyperbolic/GeneralizedHyperbolic_0.8-7.tar.gz"
    ];
    sha256 = "08z4jz9lzyc0afvxqw6m2p9h54lqk6hn1a8mva5lrddxlxf04qbv";
  };

  propagatedBuildInputs = [
    DistributionUtils
    MASS
  ];

  meta = {
    description = "R package GeneralizedHyperbolic";
    homepage = "https://cran.r-project.org/package=GeneralizedHyperbolic";
  };
}

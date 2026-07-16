{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "gamlss_dist";
  version = "6.1-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gamlss_dist_6.1-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gamlss_dist/gamlss_dist_6.1-1.tar.gz"
    ];
    sha256 = "0sch2bh1mchl7kfdy4wcmwzzgx7cldswn65a2br2x73rb1v3mnyj";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package gamlss_dist";
    homepage = "https://cran.r-project.org/package=gamlss_dist";
  };
}
